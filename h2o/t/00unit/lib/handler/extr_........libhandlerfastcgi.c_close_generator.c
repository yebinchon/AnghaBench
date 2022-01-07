
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * buf; } ;
struct TYPE_3__ {int * receiving; TYPE_2__ sending; } ;
struct st_fcgi_generator_t {TYPE_1__ resp; int * sock; int * connect_req; int timeout; } ;


 int h2o_buffer_dispose (int **) ;
 int h2o_doublebuffer_dispose (TYPE_2__*) ;
 int h2o_socket_close (int *) ;
 int h2o_socketpool_cancel_connect (int *) ;
 scalar_t__ h2o_timer_is_linked (int *) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void close_generator(struct st_fcgi_generator_t *generator)
{

    if (h2o_timer_is_linked(&generator->timeout))
        h2o_timer_unlink(&generator->timeout);
    if (generator->connect_req != ((void*)0)) {
        h2o_socketpool_cancel_connect(generator->connect_req);
        generator->connect_req = ((void*)0);
    }
    if (generator->sock != ((void*)0)) {
        h2o_socket_close(generator->sock);
        generator->sock = ((void*)0);
    }
    if (generator->resp.sending.buf != ((void*)0))
        h2o_doublebuffer_dispose(&generator->resp.sending);
    if (generator->resp.receiving != ((void*)0))
        h2o_buffer_dispose(&generator->resp.receiving);
}
