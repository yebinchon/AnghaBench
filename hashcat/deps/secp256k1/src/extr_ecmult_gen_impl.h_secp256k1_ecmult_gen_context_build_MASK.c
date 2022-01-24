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
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge_storage ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;
struct TYPE_4__ {int /*<<< orphan*/ *** prec; } ;
typedef  TYPE_1__ secp256k1_ecmult_gen_context ;

/* Variables and functions */
 int ECMULT_GEN_PREC_B ; 
 int ECMULT_GEN_PREC_G ; 
 int ECMULT_GEN_PREC_N ; 
 size_t SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void**,size_t const,void* const,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ secp256k1_ecmult_static_context ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  secp256k1_ge_const_g ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(secp256k1_ecmult_gen_context *ctx, void **prealloc) {
#ifndef USE_ECMULT_STATIC_PRECOMPUTATION
    secp256k1_ge prec[ECMULT_GEN_PREC_N * ECMULT_GEN_PREC_G];
    secp256k1_gej gj;
    secp256k1_gej nums_gej;
    int i, j;
    size_t const prealloc_size = SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE;
    void* const base = *prealloc;
#endif

    if (ctx->prec != NULL) {
        return;
    }
#ifndef USE_ECMULT_STATIC_PRECOMPUTATION
    ctx->prec = (secp256k1_ge_storage (*)[ECMULT_GEN_PREC_N][ECMULT_GEN_PREC_G])FUNC1(prealloc, prealloc_size, base, prealloc_size);

    /* get the generator */
    FUNC11(&gj, &secp256k1_ge_const_g);

    /* Construct a group element with no known corresponding scalar (nothing up my sleeve). */
    {
        static const unsigned char nums_b32[33] = "The scalar for this x is unknown";
        secp256k1_fe nums_x;
        secp256k1_ge nums_ge;
        int r;
        r = FUNC3(&nums_x, nums_b32);
        (void)r;
        FUNC0(r);
        r = FUNC5(&nums_ge, &nums_x, 0);
        (void)r;
        FUNC0(r);
        FUNC11(&nums_gej, &nums_ge);
        /* Add G to make the bits in x uniformly distributed. */
        FUNC7(&nums_gej, &nums_gej, &secp256k1_ge_const_g, NULL);
    }

    /* compute prec. */
    {
        secp256k1_gej precj[ECMULT_GEN_PREC_N * ECMULT_GEN_PREC_G]; /* Jacobian versions of prec. */
        secp256k1_gej gbase;
        secp256k1_gej numsbase;
        gbase = gj; /* PREC_G^j * G */
        numsbase = nums_gej; /* 2^j * nums. */
        for (j = 0; j < ECMULT_GEN_PREC_N; j++) {
            /* Set precj[j*PREC_G .. j*PREC_G+(PREC_G-1)] to (numsbase, numsbase + gbase, ..., numsbase + (PREC_G-1)*gbase). */
            precj[j*ECMULT_GEN_PREC_G] = numsbase;
            for (i = 1; i < ECMULT_GEN_PREC_G; i++) {
                FUNC8(&precj[j*ECMULT_GEN_PREC_G + i], &precj[j*ECMULT_GEN_PREC_G + i - 1], &gbase, NULL);
            }
            /* Multiply gbase by PREC_G. */
            for (i = 0; i < ECMULT_GEN_PREC_B; i++) {
                FUNC9(&gbase, &gbase, NULL);
            }
            /* Multiply numbase by 2. */
            FUNC9(&numsbase, &numsbase, NULL);
            if (j == ECMULT_GEN_PREC_N - 2) {
                /* In the last iteration, numsbase is (1 - 2^j) * nums instead. */
                FUNC10(&numsbase, &numsbase);
                FUNC8(&numsbase, &numsbase, &nums_gej, NULL);
            }
        }
        FUNC4(prec, precj, ECMULT_GEN_PREC_N * ECMULT_GEN_PREC_G);
    }
    for (j = 0; j < ECMULT_GEN_PREC_N; j++) {
        for (i = 0; i < ECMULT_GEN_PREC_G; i++) {
            FUNC6(&(*ctx->prec)[j][i], &prec[j*ECMULT_GEN_PREC_G + i]);
        }
    }
#else
    (void)prealloc;
    ctx->prec = (secp256k1_ge_storage (*)[ECMULT_GEN_PREC_N][ECMULT_GEN_PREC_G])secp256k1_ecmult_static_context;
#endif
    FUNC2(ctx, NULL);
}