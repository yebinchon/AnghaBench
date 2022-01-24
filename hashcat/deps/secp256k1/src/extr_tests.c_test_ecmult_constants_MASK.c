#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
struct TYPE_2__ {int /*<<< orphan*/  ecmult_gen_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  secp256k1_ge_const_g ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8(void) {
    /* Test ecmult_gen() for [0..36) and [order-36..0). */
    secp256k1_scalar x;
    secp256k1_gej r;
    secp256k1_ge ng;
    int i;
    int j;
    FUNC3(&ng, &secp256k1_ge_const_g);
    for (i = 0; i < 36; i++ ) {
        FUNC7(&x, i);
        FUNC2(&ctx->ecmult_gen_ctx, &r, &x);
        for (j = 0; j < i; j++) {
            if (j == i - 1) {
                FUNC1(&secp256k1_ge_const_g, &r);
            }
            FUNC4(&r, &r, &ng);
        }
        FUNC0(FUNC5(&r));
    }
    for (i = 1; i <= 36; i++ ) {
        FUNC7(&x, i);
        FUNC6(&x, &x);
        FUNC2(&ctx->ecmult_gen_ctx, &r, &x);
        for (j = 0; j < i; j++) {
            if (j == i - 1) {
                FUNC1(&ng, &r);
            }
            FUNC4(&r, &r, &secp256k1_ge_const_g);
        }
        FUNC0(FUNC5(&r));
    }
}