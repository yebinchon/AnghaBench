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
struct TYPE_2__ {int /*<<< orphan*/  ecmult_ctx; int /*<<< orphan*/  ecmult_gen_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

void FUNC9(void) {
    secp256k1_gej pubj;
    secp256k1_ge pub;
    secp256k1_scalar one;
    secp256k1_scalar msg, key;
    secp256k1_scalar sigr, sigs;
    int recid;
    int getrec;
    FUNC1(&msg);
    FUNC1(&key);
    FUNC4(&ctx->ecmult_gen_ctx, &pubj, &key);
    FUNC5(&pub, &pubj);
    getrec = FUNC6(1);
    FUNC2(&sigr, &sigs, &key, &msg, getrec?&recid:NULL);
    if (getrec) {
        FUNC0(recid >= 0 && recid < 4);
    }
    FUNC0(FUNC3(&ctx->ecmult_ctx, &sigr, &sigs, &pub, &msg));
    FUNC8(&one, 1);
    FUNC7(&msg, &msg, &one);
    FUNC0(!FUNC3(&ctx->ecmult_ctx, &sigr, &sigs, &pub, &msg));
}