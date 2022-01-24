#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/  H; } ;
typedef  TYPE_1__ ghash_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_AAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(ghash_ctx *ctx, uint8_t H[16])
{
  FUNC1(ctx, 0, sizeof *ctx);
  FUNC0(H, ctx->H);
  ctx->state = STATE_AAD;
}