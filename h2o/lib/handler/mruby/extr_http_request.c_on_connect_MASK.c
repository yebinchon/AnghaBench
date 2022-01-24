#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  request; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_3__* ctx; TYPE_1__ refs; } ;
typedef  int /*<<< orphan*/  h2o_url_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;
struct TYPE_10__ {struct st_h2o_mruby_http_request_context_t* data; } ;
typedef  TYPE_4__ h2o_httpclient_t ;
typedef  int /*<<< orphan*/  h2o_httpclient_properties_t ;
typedef  int /*<<< orphan*/  h2o_httpclient_proceed_req_cb ;
typedef  int /*<<< orphan*/ * h2o_httpclient_head_cb ;
typedef  int /*<<< orphan*/  h2o_header_t ;
struct TYPE_9__ {TYPE_2__* shared; } ;
struct TYPE_8__ {int /*<<< orphan*/  mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct st_h2o_mruby_http_request_context_t*) ; 

__attribute__((used)) static h2o_httpclient_head_cb FUNC5(h2o_httpclient_t *client, const char *errstr, h2o_iovec_t *method, h2o_url_t *url,
                                         const h2o_header_t **headers, size_t *num_headers, h2o_iovec_t *body,
                                         h2o_httpclient_proceed_req_cb *proceed_req_cb, h2o_httpclient_properties_t *props,
                                         h2o_url_t *origin)
{
    struct st_h2o_mruby_http_request_context_t *ctx = client->data;
    if (FUNC4(ctx))
        return NULL;

    int gc_arena = FUNC2(ctx->ctx->shared->mrb);
    FUNC3(ctx->ctx->shared->mrb, ctx->refs.request);

    h2o_httpclient_head_cb cb =
        FUNC0(client, errstr, method, url, headers, num_headers, body, proceed_req_cb, props, origin);

    FUNC1(ctx->ctx->shared->mrb, gc_arena);

    return cb;
}