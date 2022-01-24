#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int has_transfer_encoding; int /*<<< orphan*/  headers; int /*<<< orphan*/  can_keepalive; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_1__ req; int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  h2o_mruby_shared_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(h2o_mruby_shared_context_t *shared_ctx, h2o_iovec_t *name, h2o_iovec_t value, void *_ctx)
{
    struct st_h2o_mruby_http_request_context_t *ctx = _ctx;

    /* ignore certain headers */
    if (FUNC2(name->base, name->len, FUNC0("content-length")) || FUNC2(name->base, name->len, FUNC0("host")))
        return 0;

    if (FUNC2(name->base, name->len, FUNC0("connection"))) {
        if (!ctx->req.can_keepalive)
            return 0;
    }

    /* mark the existence of transfer-encoding in order to prevent us from adding content-length header */
    if (FUNC2(name->base, name->len, FUNC0("transfer-encoding")))
        ctx->req.has_transfer_encoding = 1;

    FUNC1(&ctx->pool, &ctx->req.headers, name->base, name->len, 1, NULL, value.base, value.len);

    return 0;
}