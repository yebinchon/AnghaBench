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
struct TYPE_5__ {int has_content; TYPE_3__* after_closed; } ;
struct st_h2o_mruby_http_request_context_t {int /*<<< orphan*/  ctx; int /*<<< orphan*/  receiver; int /*<<< orphan*/ * shortcut; TYPE_1__ resp; int /*<<< orphan*/ * client; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_6__ {TYPE_3__** buf; struct st_h2o_mruby_http_request_context_t* data; } ;
typedef  TYPE_2__ h2o_httpclient_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_3__ h2o_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_mruby_http_request_context_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_mruby_http_request_context_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(h2o_httpclient_t *client, const char *errstr)
{
    struct st_h2o_mruby_http_request_context_t *ctx = client->data;

    if (errstr != NULL) {
        h2o_buffer_t *tmp = ctx->resp.after_closed;
        ctx->resp.after_closed = *client->buf;
        *client->buf = tmp;
        ctx->client = NULL;
        ctx->resp.has_content = 1;
    } else if ((*client->buf)->size != 0) {
        ctx->resp.has_content = 1;
    }

    if (ctx->resp.has_content) {
        if (ctx->shortcut != NULL) {
            FUNC4(ctx->shortcut);
        } else if (!FUNC3(ctx->receiver)) {
            mrb_value chunk = FUNC0(ctx);
            FUNC2(ctx->ctx, FUNC1(ctx), chunk, NULL);
        }
    }

    return 0;
}