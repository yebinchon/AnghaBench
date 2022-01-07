
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int ctx; } ;
struct listener_ctx_t {TYPE_7__ accept_ctx; } ;
struct TYPE_10__ {int data; int cb; } ;
struct TYPE_12__ {TYPE_1__ on_close; struct listener_ctx_t* data; } ;
typedef TYPE_3__ h2o_socket_t ;
struct TYPE_11__ {int size; } ;
struct TYPE_14__ {int max_connections; TYPE_2__ thread_map; } ;


 TYPE_9__ conf ;
 int h2o_accept (TYPE_7__*,TYPE_3__*) ;
 TYPE_3__* h2o_evloop_socket_accept (TYPE_3__*) ;
 int num_connections (int) ;
 int num_sessions (int) ;
 int on_socketclose ;

__attribute__((used)) static void on_accept(h2o_socket_t *listener, const char *err)
{
    struct listener_ctx_t *ctx = listener->data;
    size_t num_accepts = conf.max_connections / 16 / conf.thread_map.size;
    if (num_accepts < 8)
        num_accepts = 8;

    if (err != ((void*)0)) {
        return;
    }

    do {
        h2o_socket_t *sock;
        if (num_connections(0) >= conf.max_connections) {





            break;
        }
        if ((sock = h2o_evloop_socket_accept(listener)) == ((void*)0)) {
            break;
        }
        num_connections(1);
        num_sessions(1);

        sock->on_close.cb = on_socketclose;
        sock->on_close.data = ctx->accept_ctx.ctx;

        h2o_accept(&ctx->accept_ctx, sock);

    } while (--num_accepts != 0);
}
