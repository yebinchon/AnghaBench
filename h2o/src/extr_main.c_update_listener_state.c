
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct listener_ctx_t {int sock; } ;
struct TYPE_6__ {scalar_t__ max_connections; size_t num_listeners; TYPE_2__** listeners; } ;
struct TYPE_4__ {int * ctx; } ;
struct TYPE_5__ {TYPE_1__ quic; } ;


 TYPE_3__ conf ;
 scalar_t__ h2o_socket_is_reading (int ) ;
 int h2o_socket_read_start (int ,int ) ;
 int h2o_socket_read_stop (int ) ;
 scalar_t__ num_connections (int ) ;
 int on_accept ;

__attribute__((used)) static void update_listener_state(struct listener_ctx_t *listeners)
{
    size_t i;

    if (num_connections(0) < conf.max_connections) {
        for (i = 0; i != conf.num_listeners; ++i) {
            if (conf.listeners[i]->quic.ctx == ((void*)0) && !h2o_socket_is_reading(listeners[i].sock))
                h2o_socket_read_start(listeners[i].sock, on_accept);
        }
    } else {
        for (i = 0; i != conf.num_listeners; ++i) {
            if (conf.listeners[i]->quic.ctx == ((void*)0) && h2o_socket_is_reading(listeners[i].sock))
                h2o_socket_read_stop(listeners[i].sock);
        }
    }
}
