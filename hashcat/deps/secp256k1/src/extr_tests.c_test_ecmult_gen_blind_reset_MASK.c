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
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
struct TYPE_3__ {int /*<<< orphan*/  initial; int /*<<< orphan*/  blind; } ;
struct TYPE_4__ {TYPE_1__ ecmult_gen_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(void) {
    /* Test ecmult_gen() blinding reset and confirm that the blinding is consistent. */
    secp256k1_scalar b;
    secp256k1_gej initial;
    FUNC2(&ctx->ecmult_gen_ctx, 0);
    b = ctx->ecmult_gen_ctx.blind;
    initial = ctx->ecmult_gen_ctx.initial;
    FUNC2(&ctx->ecmult_gen_ctx, 0);
    FUNC0(FUNC3(&b, &ctx->ecmult_gen_ctx.blind));
    FUNC0(FUNC1(&initial, &ctx->ecmult_gen_ctx.initial));
}