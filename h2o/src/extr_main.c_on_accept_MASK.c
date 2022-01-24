#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  ctx; } ;
struct listener_ctx_t {TYPE_7__ accept_ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; int /*<<< orphan*/  cb; } ;
struct TYPE_12__ {TYPE_1__ on_close; struct listener_ctx_t* data; } ;
typedef  TYPE_3__ h2o_socket_t ;
struct TYPE_11__ {int size; } ;
struct TYPE_14__ {int max_connections; TYPE_2__ thread_map; } ;

/* Variables and functions */
 TYPE_9__ conf ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  on_socketclose ; 

__attribute__((used)) static void FUNC4(h2o_socket_t *listener, const char *err)
{
    struct listener_ctx_t *ctx = listener->data;
    size_t num_accepts = conf.max_connections / 16 / conf.thread_map.size;
    if (num_accepts < 8)
        num_accepts = 8;

    if (err != NULL) {
        return;
    }

    do {
        h2o_socket_t *sock;
        if (FUNC2(0) >= conf.max_connections) {
            /* The accepting socket is disactivated before entering the next in `run_loop`.
             * Note: it is possible that the server would accept at most `max_connections + num_threads` connections, since the
             * server does not check if the number of connections has exceeded _after_ epoll notifies of a new connection _but_
             * _before_ calling `accept`.  In other words t/40max-connections.t may fail.
             */
            break;
        }
        if ((sock = FUNC1(listener)) == NULL) {
            break;
        }
        FUNC2(1);
        FUNC3(1);

        sock->on_close.cb = on_socketclose;
        sock->on_close.data = ctx->accept_ctx.ctx;

        FUNC0(&ctx->accept_ctx, sock);

    } while (--num_accepts != 0);
}