#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
struct TYPE_20__ {scalar_t__ infinity; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;
struct TYPE_21__ {int /*<<< orphan*/  ecmult_gen_ctx; } ;
typedef  TYPE_2__ secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXHAUSTIVE_TEST_ORDER ; 
 int SECP256K1_CONTEXT_SIGN ; 
 int SECP256K1_CONTEXT_VERIFY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  secp256k1_ge_const_g ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_1__*,int) ; 

int FUNC19(void) {
    int i;
    secp256k1_gej groupj[EXHAUSTIVE_TEST_ORDER];
    secp256k1_ge group[EXHAUSTIVE_TEST_ORDER];

    /* Build context */
    secp256k1_context *ctx = FUNC2(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);

    /* TODO set z = 1, then do num_tests runs with random z values */

    /* Generate the entire group */
    FUNC9(&groupj[0]);
    FUNC6(&group[0], &groupj[0]);
    for (i = 1; i < EXHAUSTIVE_TEST_ORDER; i++) {
        /* Set a different random z-value for each Jacobian point */
        secp256k1_fe z;
        FUNC1(&z);

        FUNC7(&groupj[i], &groupj[i - 1], &secp256k1_ge_const_g);
        FUNC6(&group[i], &groupj[i]);
        FUNC8(&groupj[i], &z);

        /* Verify against ecmult_gen */
        {
            secp256k1_scalar scalar_i;
            secp256k1_gej generatedj;
            secp256k1_ge generated;

            FUNC10(&scalar_i, i);
            FUNC4(&ctx->ecmult_gen_ctx, &generatedj, &scalar_i);
            FUNC6(&generated, &generatedj);

            FUNC0(group[i].infinity == 0);
            FUNC0(generated.infinity == 0);
            FUNC0(FUNC5(&generated.x, &group[i].x));
            FUNC0(FUNC5(&generated.y, &group[i].y));
        }
    }

    /* Run the tests */
#ifdef USE_ENDOMORPHISM
    test_exhaustive_endomorphism(group, EXHAUSTIVE_TEST_ORDER);
#endif
    FUNC11(group, groupj, EXHAUSTIVE_TEST_ORDER);
    FUNC12(ctx, group, groupj, EXHAUSTIVE_TEST_ORDER);
    FUNC13(ctx, group, EXHAUSTIVE_TEST_ORDER);
    FUNC17(ctx, group, EXHAUSTIVE_TEST_ORDER);
    FUNC18(ctx, group, EXHAUSTIVE_TEST_ORDER);

#ifdef ENABLE_MODULE_RECOVERY
    test_exhaustive_recovery_sign(ctx, group, EXHAUSTIVE_TEST_ORDER);
    test_exhaustive_recovery_verify(ctx, group, EXHAUSTIVE_TEST_ORDER);
#endif

    FUNC3(ctx);
    return 0;
}