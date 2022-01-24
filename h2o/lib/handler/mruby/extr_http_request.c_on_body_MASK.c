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
struct TYPE_9__ {int /*<<< orphan*/  input_stream; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_2__* ctx; TYPE_3__ refs; } ;
struct TYPE_10__ {struct st_h2o_mruby_http_request_context_t* data; } ;
typedef  TYPE_4__ h2o_httpclient_t ;
struct TYPE_8__ {TYPE_1__* shared; } ;
struct TYPE_7__ {int /*<<< orphan*/  mrb; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct st_h2o_mruby_http_request_context_t*) ; 

__attribute__((used)) static int FUNC5(h2o_httpclient_t *client, const char *errstr)
{
    struct st_h2o_mruby_http_request_context_t *ctx = client->data;
    if (FUNC4(ctx))
        return -1;

    int gc_arena = FUNC2(ctx->ctx->shared->mrb);
    FUNC3(ctx->ctx->shared->mrb, ctx->refs.input_stream);

    int ret = FUNC0(client, errstr);

    FUNC1(ctx->ctx->shared->mrb, gc_arena);

    return ret;
}