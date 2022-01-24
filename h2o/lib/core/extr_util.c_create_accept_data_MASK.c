#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct st_h2o_accept_data_t {struct timeval connected_at; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * sock; TYPE_3__* ctx; } ;
typedef  int /*<<< orphan*/  h2o_timer_cb ;
typedef  int /*<<< orphan*/  h2o_socket_t ;
struct TYPE_7__ {TYPE_2__* ctx; } ;
typedef  TYPE_3__ h2o_accept_ctx_t ;
struct TYPE_6__ {TYPE_1__* globalconf; int /*<<< orphan*/  loop; } ;
struct TYPE_5__ {int /*<<< orphan*/  handshake_timeout; } ;

/* Variables and functions */
 struct st_h2o_accept_data_t* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct st_h2o_accept_data_t *FUNC3(h2o_accept_ctx_t *ctx, h2o_socket_t *sock, struct timeval connected_at,
                                                       h2o_timer_cb timeout_cb, size_t sz)
{
    struct st_h2o_accept_data_t *data = FUNC0(sz);
    data->ctx = ctx;
    data->sock = sock;
    FUNC1(&data->timeout, timeout_cb);
    FUNC2(ctx->ctx->loop, ctx->ctx->globalconf->handshake_timeout, &data->timeout);
    data->connected_at = connected_at;
    return data;
}