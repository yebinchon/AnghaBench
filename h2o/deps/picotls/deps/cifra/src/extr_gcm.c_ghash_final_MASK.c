#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {scalar_t__ state; int len_aad; int len_cipher; scalar_t__ buffer_used; int /*<<< orphan*/  Y; } ;
typedef  TYPE_1__ ghash_ctx ;

/* Variables and functions */
 scalar_t__ STATE_AAD ; 
 scalar_t__ STATE_CIPHER ; 
 scalar_t__ STATE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(ghash_ctx *ctx, uint8_t out[16])
{
  uint8_t lenbuf[8];

  if (ctx->state == STATE_AAD || ctx->state == STATE_CIPHER)
  {
    FUNC3(ctx);
    ctx->state = STATE_INVALID;
  }

  /* Add len(A) || len(C) */
  FUNC4(ctx->len_aad * 8, lenbuf);
  FUNC2(ctx, lenbuf, sizeof lenbuf);

  FUNC4(ctx->len_cipher * 8, lenbuf);
  FUNC2(ctx, lenbuf, sizeof lenbuf);

  FUNC0(ctx->buffer_used == 0);
  FUNC1(ctx->Y, out);
}