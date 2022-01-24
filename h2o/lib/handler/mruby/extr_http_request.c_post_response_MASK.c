#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_21__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_17__ ;

/* Type definitions */
struct TYPE_27__ {int /*<<< orphan*/  request; int /*<<< orphan*/  input_stream; } ;
struct TYPE_25__ {scalar_t__ method_is_head; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_17__* ctx; TYPE_4__ refs; int /*<<< orphan*/  receiver; TYPE_2__ req; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_28__ {int /*<<< orphan*/ * exc; } ;
typedef  TYPE_5__ mrb_state ;
struct TYPE_23__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_29__ {TYPE_1__ value; TYPE_21__* name; } ;
typedef  TYPE_6__ h2o_header_t ;
struct TYPE_26__ {int /*<<< orphan*/  constants; TYPE_5__* mrb; } ;
struct TYPE_24__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_22__ {TYPE_3__* shared; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS ; 
 int /*<<< orphan*/  H2O_MRUBY_HTTP_INPUT_STREAM_CLASS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_mruby_http_request_context_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_21__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,struct st_h2o_mruby_http_request_context_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_17__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  input_stream_type ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int) ; 
 int FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC21(struct st_h2o_mruby_http_request_context_t *ctx, int status, const h2o_header_t *headers_sorted,
                          size_t num_headers, int header_requires_dup)
{
    mrb_state *mrb = ctx->ctx->shared->mrb;
    int gc_arena = FUNC15(mrb);
    size_t i;

    mrb_value resp = FUNC10(mrb, 3);

    /* set status */
    FUNC11(mrb, resp, 0, FUNC12(status));

    /* set headers */
    mrb_value headers_hash = FUNC16(mrb, (int)num_headers);
    for (i = 0; i < num_headers; ++i) {
        /* skip the headers, we determine the eos! */
        if (FUNC4(headers_sorted[i].name, headers_sorted[i].name->len, FUNC0("content-length")) ||
            FUNC4(headers_sorted[i].name, headers_sorted[i].name->len, FUNC0("transfer-encoding")))
            continue;
        /* build and set the hash entry */
        mrb_value k, v;
        if (header_requires_dup) {
            k = FUNC6(mrb, headers_sorted[i].name->base, headers_sorted[i].name->len);
            v = FUNC6(mrb, headers_sorted[i].value.base, headers_sorted[i].value.len);
        } else {
            k = FUNC7(mrb, headers_sorted[i].name->base, headers_sorted[i].name->len);
            v = FUNC7(mrb, headers_sorted[i].value.base, headers_sorted[i].value.len);
        }
        while (i + 1 < num_headers && FUNC4(headers_sorted[i].name->base, headers_sorted[i].name->len,
                                                headers_sorted[i + 1].name->base, headers_sorted[i + 1].name->len)) {
            ++i;
            v = FUNC20(mrb, v, "\n");
            v = FUNC19(mrb, v, headers_sorted[i].value.base, headers_sorted[i].value.len);
        }
        FUNC17(mrb, headers_hash, k, v);
    }
    FUNC11(mrb, resp, 1, headers_hash);

    /* set input stream */
    FUNC1(FUNC18(ctx->refs.input_stream));
    mrb_value input_stream_class;
    if (ctx->req.method_is_head || status == 101 || status == 204 || status == 304) {
        input_stream_class = FUNC9(ctx->ctx->shared->constants, H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS);
    } else {
        input_stream_class = FUNC9(ctx->ctx->shared->constants, H2O_MRUBY_HTTP_INPUT_STREAM_CLASS);
    }
    ctx->refs.input_stream = FUNC5(mrb, input_stream_class, ctx, &input_stream_type);
    FUNC11(mrb, resp, 2, ctx->refs.input_stream);

    if (FUNC18(ctx->receiver)) {
        /* is async */
        FUNC13(mrb, ctx->refs.request, "_set_response", 1, resp);
        if (mrb->exc != NULL) {
            FUNC3("_set_response failed\n");
        }
    } else {
        /* send response to the waiting receiver */
        FUNC8(ctx->ctx, FUNC2(ctx), resp, NULL);
    }

    FUNC14(mrb, gc_arena);
}