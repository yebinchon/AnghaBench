#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  counter_width; scalar_t__ counter_offset; scalar_t__ nonce; int /*<<< orphan*/  prpctx; TYPE_1__* prp; } ;
typedef  TYPE_2__ cf_ctr ;
struct TYPE_3__ {int /*<<< orphan*/  (* encrypt ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *vctx, uint8_t *out)
{
  cf_ctr *ctx = vctx;
  ctx->prp->encrypt(ctx->prpctx, ctx->nonce, out);
  FUNC0(ctx->nonce + ctx->counter_offset, ctx->counter_width);
}