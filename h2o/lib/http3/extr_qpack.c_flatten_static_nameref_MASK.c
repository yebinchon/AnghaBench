#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_qpack_flatten_context_t {TYPE_2__* headers_buf; int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_6__ {int len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ h2o_iovec_t ;
struct TYPE_7__ {int size; int* entries; } ;

/* Variables and functions */
 int H2O_HPACK_ENCODE_INT_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC3(struct st_h2o_qpack_flatten_context_t *ctx, int32_t index, h2o_iovec_t value, int dont_compress)
{
    FUNC2(ctx->pool, ctx->headers_buf, ctx->headers_buf->size + H2O_HPACK_ENCODE_INT_MAX_LENGTH * 2 + value.len);
    ctx->headers_buf->entries[ctx->headers_buf->size] = 0x50 | (dont_compress ? 0x20 : 0);
    FUNC0(ctx->headers_buf, index, 4);
    FUNC1(ctx->headers_buf, value.base, value.len, 7, dont_compress);
}