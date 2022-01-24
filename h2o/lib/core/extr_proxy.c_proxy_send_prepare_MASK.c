#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  is_head; } ;
struct TYPE_10__ {int /*<<< orphan*/  stop; int /*<<< orphan*/  proceed; } ;
struct rp_generator_t {int is_websocket_handshake; scalar_t__ res_done; scalar_t__ req_done; int /*<<< orphan*/  send_headers_timeout; int /*<<< orphan*/  sending; int /*<<< orphan*/ * last_content_before_send; TYPE_3__ up_req; scalar_t__ had_body_error; TYPE_5__* src_req; TYPE_1__ super; } ;
struct TYPE_13__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_14__ {int /*<<< orphan*/  proxy_stats; TYPE_4__ method; TYPE_2__ upgrade; int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ h2o_req_t ;
struct TYPE_15__ {int /*<<< orphan*/ * websocket_timeout; } ;
typedef  TYPE_6__ h2o_httpclient_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  do_proceed ; 
 int /*<<< orphan*/  do_stop ; 
 TYPE_6__* FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rp_generator_t* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  on_generator_dispose ; 
 int /*<<< orphan*/  on_send_headers_timeout ; 

__attribute__((used)) static struct rp_generator_t *FUNC8(h2o_req_t *req)
{
    struct rp_generator_t *self = FUNC4(&req->pool, sizeof(*self), on_generator_dispose);
    h2o_httpclient_ctx_t *client_ctx = FUNC1(req);

    self->super.proceed = do_proceed;
    self->super.stop = do_stop;
    self->src_req = req;
    if (client_ctx->websocket_timeout != NULL && FUNC3(req->upgrade.base, req->upgrade.len, FUNC0("websocket"))) {
        self->is_websocket_handshake = 1;
    } else {
        self->is_websocket_handshake = 0;
    }
    self->had_body_error = 0;
    self->up_req.is_head = FUNC5(req->method.base, req->method.len, FUNC0("HEAD"));
    self->last_content_before_send = NULL;
    FUNC2(&self->sending, &h2o_socket_buffer_prototype);
    FUNC7(&req->proxy_stats, 0, sizeof(req->proxy_stats));
    FUNC6(&self->send_headers_timeout, on_send_headers_timeout);
    self->req_done = 0;
    self->res_done = 0;

    return self;
}