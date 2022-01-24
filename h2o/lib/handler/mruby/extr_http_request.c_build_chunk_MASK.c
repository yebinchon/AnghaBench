#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int has_content; TYPE_5__* after_closed; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_4__ resp; TYPE_3__* ctx; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_10__ {scalar_t__ size; int /*<<< orphan*/  bytes; } ;
struct TYPE_8__ {TYPE_2__* shared; } ;
struct TYPE_7__ {int /*<<< orphan*/  mrb; } ;
struct TYPE_6__ {TYPE_5__** buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static mrb_value FUNC4(struct st_h2o_mruby_http_request_context_t *ctx)
{
    mrb_value chunk;

    FUNC0(ctx->resp.has_content);

    if (ctx->client != NULL) {
        FUNC0((*ctx->client->buf)->size != 0);
        chunk = FUNC2(ctx->ctx->shared->mrb, (*ctx->client->buf)->bytes, (*ctx->client->buf)->size);
        FUNC1(ctx->client->buf, (*ctx->client->buf)->size);
        ctx->resp.has_content = 0;
    } else {
        if (ctx->resp.after_closed->size == 0) {
            chunk = FUNC3();
        } else {
            chunk = FUNC2(ctx->ctx->shared->mrb, ctx->resp.after_closed->bytes, ctx->resp.after_closed->size);
            FUNC1(&ctx->resp.after_closed, ctx->resp.after_closed->size);
        }
        /* has_content is retained as true, so that repeated calls will return nil immediately */
    }

    return chunk;
}