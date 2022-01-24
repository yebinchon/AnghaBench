#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
struct TYPE_4__ {int /*<<< orphan*/  initial; int /*<<< orphan*/  blind; } ;
struct TYPE_5__ {TYPE_1__ ecmult_gen_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC9(void) {
    /* Test ecmult_gen() blinding and confirm that the blinding changes, the affine points match, and the z's don't match. */
    secp256k1_scalar key;
    secp256k1_scalar b;
    unsigned char seed32[32];
    secp256k1_gej pgej;
    secp256k1_gej pgej2;
    secp256k1_gej i;
    secp256k1_ge pge;
    FUNC3(&key);
    FUNC4(&ctx->ecmult_gen_ctx, &pgej, &key);
    FUNC7(seed32);
    b = ctx->ecmult_gen_ctx.blind;
    i = ctx->ecmult_gen_ctx.initial;
    FUNC5(&ctx->ecmult_gen_ctx, seed32);
    FUNC0(!FUNC8(&b, &ctx->ecmult_gen_ctx.blind));
    FUNC4(&ctx->ecmult_gen_ctx, &pgej2, &key);
    FUNC0(!FUNC2(&pgej, &pgej2));
    FUNC0(!FUNC2(&i, &ctx->ecmult_gen_ctx.initial));
    FUNC6(&pge, &pgej);
    FUNC1(&pge, &pgej2);
}