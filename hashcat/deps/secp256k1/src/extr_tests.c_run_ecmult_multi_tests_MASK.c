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
typedef  int /*<<< orphan*/  secp256k1_scratch ;
struct TYPE_2__ {int /*<<< orphan*/  error_callback; } ;

/* Variables and functions */
 int ALIGNMENT ; 
 int STRAUSS_SCRATCH_OBJECTS ; 
 TYPE_1__* ctx ; 
 int /*<<< orphan*/  secp256k1_ecmult_multi_var ; 
 int /*<<< orphan*/  secp256k1_ecmult_pippenger_batch_single ; 
 int /*<<< orphan*/  secp256k1_ecmult_strauss_batch_single ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void) {
    secp256k1_scratch *scratch;

    FUNC8();
    FUNC7();
    scratch = FUNC0(&ctx->error_callback, 819200);
    FUNC3(scratch, secp256k1_ecmult_multi_var);
    FUNC3(NULL, secp256k1_ecmult_multi_var);
    FUNC3(scratch, secp256k1_ecmult_pippenger_batch_single);
    FUNC4(secp256k1_ecmult_pippenger_batch_single);
    FUNC3(scratch, secp256k1_ecmult_strauss_batch_single);
    FUNC4(secp256k1_ecmult_strauss_batch_single);
    FUNC1(&ctx->error_callback, scratch);

    /* Run test_ecmult_multi with space for exactly one point */
    scratch = FUNC0(&ctx->error_callback, FUNC2(1) + STRAUSS_SCRATCH_OBJECTS*ALIGNMENT);
    FUNC3(scratch, secp256k1_ecmult_multi_var);
    FUNC1(&ctx->error_callback, scratch);

    FUNC5();
    FUNC6();
}