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
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
struct TYPE_3__ {int /*<<< orphan*/ * expected_output; int /*<<< orphan*/ * output; int /*<<< orphan*/ * seckeys; int /*<<< orphan*/ * pubkeys; int /*<<< orphan*/ * scalars; int /*<<< orphan*/  ctx; int /*<<< orphan*/ * scratch; void* ecmult_multi; } ;
typedef  TYPE_1__ bench_data ;

/* Variables and functions */
 int ITERS ; 
 int POINTS ; 
 int SECP256K1_CONTEXT_SIGN ; 
 int SECP256K1_CONTEXT_VERIFY ; 
 int STRAUSS_SCRATCH_OBJECTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,char**,char*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* secp256k1_ecmult_multi_var ; 
 void* secp256k1_ecmult_pippenger_batch_single ; 
 void* secp256k1_ecmult_strauss_batch_single ; 
 int /*<<< orphan*/  secp256k1_ge_const_g ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC17(int argc, char **argv) {
    bench_data data;
    int i, p;
    secp256k1_gej* pubkeys_gej;
    size_t scratch_size;

    data.ctx = FUNC7(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);
    scratch_size = FUNC16(POINTS) + STRAUSS_SCRATCH_OBJECTS*16;
    data.scratch = FUNC14(data.ctx, scratch_size);
    data.ecmult_multi = secp256k1_ecmult_multi_var;

    if (argc > 1) {
        if(FUNC3(argc, argv, "pippenger_wnaf")) {
            FUNC5("Using pippenger_wnaf:\n");
            data.ecmult_multi = secp256k1_ecmult_pippenger_batch_single;
        } else if(FUNC3(argc, argv, "strauss_wnaf")) {
            FUNC5("Using strauss_wnaf:\n");
            data.ecmult_multi = secp256k1_ecmult_strauss_batch_single;
        } else if(FUNC3(argc, argv, "simple")) {
            FUNC5("Using simple algorithm:\n");
            data.ecmult_multi = secp256k1_ecmult_multi_var;
            FUNC15(data.ctx, data.scratch);
            data.scratch = NULL;
        } else {
            FUNC0(stderr, "%s: unrecognized argument '%s'.\n", argv[0], argv[1]);
            FUNC0(stderr, "Use 'pippenger_wnaf', 'strauss_wnaf', 'simple' or no argument to benchmark a combined algorithm.\n");
            return 1;
        }
    }

    /* Allocate stuff */
    data.scalars = FUNC4(sizeof(secp256k1_scalar) * POINTS);
    data.seckeys = FUNC4(sizeof(secp256k1_scalar) * POINTS);
    data.pubkeys = FUNC4(sizeof(secp256k1_ge) * POINTS);
    data.expected_output = FUNC4(sizeof(secp256k1_gej) * (ITERS + 1));
    data.output = FUNC4(sizeof(secp256k1_gej) * (ITERS + 1));

    /* Generate a set of scalars, and private/public keypairs. */
    pubkeys_gej = FUNC4(sizeof(secp256k1_gej) * POINTS);
    FUNC11(&pubkeys_gej[0], &secp256k1_ge_const_g);
    FUNC13(&data.seckeys[0], 1);
    for (i = 0; i < POINTS; ++i) {
        FUNC2(i, &data.scalars[i]);
        if (i) {
            FUNC10(&pubkeys_gej[i], &pubkeys_gej[i - 1], NULL);
            FUNC12(&data.seckeys[i], &data.seckeys[i - 1], &data.seckeys[i - 1]);
        }
    }
    FUNC9(data.pubkeys, pubkeys_gej, POINTS);
    FUNC1(pubkeys_gej);

    for (i = 1; i <= 8; ++i) {
        FUNC6(&data, i, 1);
    }

    for (p = 0; p <= 11; ++p) {
        for (i = 9; i <= 16; ++i) {
            FUNC6(&data, i << p, 1);
        }
    }
    if (data.scratch != NULL) {
        FUNC15(data.ctx, data.scratch);
    }
    FUNC8(data.ctx);
    FUNC1(data.scalars);
    FUNC1(data.pubkeys);
    FUNC1(data.seckeys);
    FUNC1(data.output);
    FUNC1(data.expected_output);

    return(0);
}