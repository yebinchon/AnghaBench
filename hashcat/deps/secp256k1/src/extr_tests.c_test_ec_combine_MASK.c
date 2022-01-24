#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  sd ;
struct TYPE_3__ {int /*<<< orphan*/  ecmult_gen_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* ctx ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC9(void) {
    secp256k1_scalar sum = FUNC1(0, 0, 0, 0, 0, 0, 0, 0);
    secp256k1_pubkey data[6];
    const secp256k1_pubkey* d[6];
    secp256k1_pubkey sd;
    secp256k1_pubkey sd2;
    secp256k1_gej Qj;
    secp256k1_ge Q;
    int i;
    for (i = 1; i <= 6; i++) {
        secp256k1_scalar s;
        FUNC3(&s);
        FUNC8(&sum, &sum, &s);
        FUNC5(&ctx->ecmult_gen_ctx, &Qj, &s);
        FUNC6(&Q, &Qj);
        FUNC7(&data[i - 1], &Q);
        d[i - 1] = &data[i - 1];
        FUNC5(&ctx->ecmult_gen_ctx, &Qj, &sum);
        FUNC6(&Q, &Qj);
        FUNC7(&sd, &Q);
        FUNC0(FUNC4(ctx, &sd2, d, i) == 1);
        FUNC0(FUNC2(&sd, &sd2, sizeof(sd)) == 0);
    }
}