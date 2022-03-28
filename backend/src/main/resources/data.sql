INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown','alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown','bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green','maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES ('Primeiro feedback da tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2021-07-14T10:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES ('Segundo feedback da tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2021-07-14T15:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES ('Terceiro feedback da tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2021-07-14T20:00:00Z', false, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp de HTML', 'https://www.maxpixel.net/static/photo/1x/Training-Course-Business-Training-Training-3220712.jpg', 'https://cdn.icon-icons.com/icons2/37/PNG/512/bookstack_libr_3024.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-07-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-08-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2022-08-14T10:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha de HTML', 'Trilha principal de HTML', 1, 'https://www.maxpixel.net/static/photo/1x/Training-Course-Business-Training-Training-3220712.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Fórum', 'Tire suas dúvidas', 2, 'https://www.maxpixel.net/static/photo/1x/Training-Course-Business-Training-Training-3220712.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://www.maxpixel.net/static/photo/1x/Training-Course-Business-Training-Training-3220712.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://www.maxpixel.net/static/photo/1x/Training-Course-Business-Training-Training-3220712.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 2, 'https://www.maxpixel.net/static/photo/1x/Training-Course-Business-Training-Training-3220712.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos terminar', 3, 'https://www.maxpixel.net/static/photo/1x/Training-Course-Business-Training-Training-3220712.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2021-07-14T13:00:00Z',null,true,false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2,1,TIMESTAMP WITH TIME ZONE '2021-07-14T15:00:00Z',null,true,false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Primeira aula da trilha de HTML', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Conceitos iniciais das tags HTML', 'https://www.youtube.com/watch?v=epDCjksKMok&list=PLHz_AreHm4dlAnJ_jJtV29RFxnPHDuk9o');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Segunda aula da trilha de HTML', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Tags principais do HTML', 'https://www.youtube.com/watch?v=epDCjksKMok&list=PLHz_AreHm4dlAnJ_jJtV29RFxnPHDuk9o');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Terceira aula da trilha de HTML', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Primeiro exemplo feito em HTML', 'https://www.youtube.com/watch?v=epDCjksKMok&list=PLHz_AreHm4dlAnJ_jJtV29RFxnPHDuk9o');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, '', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-08-14T15:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, offer_id, user_id) VALUES ('https://github.com/thaisamorandini89/ds-dslearn', TIMESTAMP WITH TIME ZONE '2021-07-14T15:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2021-07-15T15:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2021-07-15T15:30:00Z', 2, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2021-07-15T15:30:00Z', 3, 1, 2);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply(body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2021-07-15T15:10:00Z', 1, 2);
INSERT INTO tb_reply(body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2021-07-15T15:10:00Z', 1, 1);

INSERT INTO tb_reply_likes(reply_id, user_id) VALUES (1, 1);