#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ h2o_socket_t ;
struct TYPE_16__ {int /*<<< orphan*/ * ssl_ctx; scalar_t__ expect_proxy_line; TYPE_1__* ctx; } ;
typedef  TYPE_3__ h2o_accept_ctx_t ;
struct TYPE_14__ {int /*<<< orphan*/  loop; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* create ) (TYPE_3__*,TYPE_2__*,struct timeval) ;} ;

/* Variables and functions */
 TYPE_12__ accept_data_callbacks ; 
 struct timeval FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_read_proxy_line ; 
 int /*<<< orphan*/  on_ssl_handshake_complete ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,struct timeval) ; 

void FUNC6(h2o_accept_ctx_t *ctx, h2o_socket_t *sock)
{
    struct timeval connected_at = FUNC0(ctx->ctx->loop);

    if (ctx->expect_proxy_line || ctx->ssl_ctx != NULL) {
        sock->data = accept_data_callbacks.create(ctx, sock, connected_at);
        if (ctx->expect_proxy_line) {
            FUNC3(sock, on_read_proxy_line);
        } else {
            FUNC4(sock, ctx->ssl_ctx, NULL, FUNC2(NULL, 0), on_ssl_handshake_complete);
        }
    } else {
        FUNC1(ctx, sock, connected_at);
    }
}