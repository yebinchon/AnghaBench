#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ size; } ;
struct TYPE_10__ {scalar_t__ status; scalar_t__ content_length; TYPE_7__ headers; } ;
struct TYPE_12__ {TYPE_2__ res; int /*<<< orphan*/  pool; } ;
struct st_mruby_subreq_t {TYPE_5__* ctx; TYPE_4__ super; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_11__ {TYPE_1__ buf; } ;
typedef  TYPE_3__ h2o_token_t ;
typedef  TYPE_4__ h2o_req_t ;
struct TYPE_13__ {TYPE_6__* shared; } ;
typedef  TYPE_5__ h2o_mruby_context_t ;
struct TYPE_14__ {int /*<<< orphan*/  constants; int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_APP_INPUT_STREAM_CLASS ; 
 TYPE_3__* H2O_TOKEN_CONTENT_LENGTH ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  app_input_stream_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct st_mruby_subreq_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iterate_headers_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value FUNC12(struct st_mruby_subreq_t *subreq)
{
    h2o_req_t *req = &subreq->super;
    h2o_mruby_context_t *ctx = subreq->ctx;
    mrb_state *mrb = ctx->shared->mrb;

    /* build response array */
    mrb_value resp = FUNC5(mrb, 3);

    /* status */
    FUNC6(mrb, resp, 0, FUNC7(req->res.status));

    /* headers */
    {
        mrb_value headers_hash = FUNC9(mrb, (int)req->res.headers.size);
        FUNC1(ctx->shared, &req->pool, &req->res.headers, iterate_headers_callback,
                                         FUNC11(headers_hash));
        if (req->res.content_length != SIZE_MAX) {
            h2o_token_t *token = H2O_TOKEN_CONTENT_LENGTH;
            mrb_value n = FUNC2(mrb, token->buf.base, token->buf.len);
            mrb_value v = FUNC3(mrb, FUNC7(req->res.content_length));
            FUNC10(mrb, headers_hash, n, v);
        }
        FUNC6(mrb, resp, 1, headers_hash);
    }

    /* body */
    {
        mrb_value body = FUNC0(
            mrb, FUNC4(ctx->shared->constants, H2O_MRUBY_APP_INPUT_STREAM_CLASS), subreq, &app_input_stream_type);
        FUNC8(mrb, body, "initialize", 0);
        FUNC6(mrb, resp, 2, body);
    }

    return resp;
}