
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_evloop_socket_t {struct st_h2o_evloop_socket_t* _next_pending; } ;
struct TYPE_3__ {struct st_h2o_evloop_socket_t* _pending_as_server; struct st_h2o_evloop_socket_t* _pending_as_client; } ;
typedef TYPE_1__ h2o_evloop_t ;


 int run_socket (struct st_h2o_evloop_socket_t*) ;

__attribute__((used)) static void run_pending(h2o_evloop_t *loop)
{
    struct st_h2o_evloop_socket_t *sock;

    while (loop->_pending_as_server != ((void*)0) || loop->_pending_as_client != ((void*)0)) {
        while ((sock = loop->_pending_as_client) != ((void*)0)) {
            loop->_pending_as_client = sock->_next_pending;
            sock->_next_pending = sock;
            run_socket(sock);
        }
        if ((sock = loop->_pending_as_server) != ((void*)0)) {
            loop->_pending_as_server = sock->_next_pending;
            sock->_next_pending = sock;
            run_socket(sock);
        }
    }
}
