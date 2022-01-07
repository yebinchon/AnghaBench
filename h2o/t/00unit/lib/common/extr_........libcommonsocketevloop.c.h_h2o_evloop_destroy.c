
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct st_h2o_evloop_socket_t* head; } ;
struct st_h2o_evloop_socket_t {int _timeouts; struct st_h2o_evloop_socket_t* _next_statechanged; TYPE_1__ _statechanged; struct st_h2o_evloop_socket_t* _next_pending; struct st_h2o_evloop_socket_t* _pending_as_server; struct st_h2o_evloop_socket_t* _pending_as_client; } ;
typedef int h2o_socket_t ;
typedef struct st_h2o_evloop_socket_t h2o_evloop_t ;


 scalar_t__ UINT64_MAX ;
 int assert (int) ;
 int evloop_do_dispose (struct st_h2o_evloop_socket_t*) ;
 int free (struct st_h2o_evloop_socket_t*) ;
 int h2o_socket_close (int *) ;
 int h2o_timerwheel_destroy (int ) ;
 scalar_t__ h2o_timerwheel_get_wake_at (int ) ;

void h2o_evloop_destroy(h2o_evloop_t *loop)
{
    struct st_h2o_evloop_socket_t *sock;


    assert(h2o_timerwheel_get_wake_at(loop->_timeouts) == UINT64_MAX);


    while ((sock = loop->_pending_as_client) != ((void*)0)) {
        loop->_pending_as_client = sock->_next_pending;
        sock->_next_pending = sock;
        h2o_socket_close((h2o_socket_t *)sock);
    }
    while ((sock = loop->_pending_as_server) != ((void*)0)) {
        loop->_pending_as_server = sock->_next_pending;
        sock->_next_pending = sock;
        h2o_socket_close((h2o_socket_t *)sock);
    }




    while ((sock = loop->_statechanged.head) != ((void*)0)) {
        loop->_statechanged.head = sock->_next_statechanged;
        free(sock);
    }


    evloop_do_dispose(loop);


    h2o_timerwheel_destroy(loop->_timeouts);
    free(loop);
}
