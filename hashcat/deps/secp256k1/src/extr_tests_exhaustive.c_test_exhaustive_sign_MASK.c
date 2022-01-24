#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_ecdsa_signature ;
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXHAUSTIVE_TEST_ORDER ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,unsigned char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  secp256k1_nonce_function_smallint ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 

void FUNC6(const secp256k1_context *ctx, const secp256k1_ge *group, int order) {
    int i, j, k;

    /* Loop */
    for (i = 1; i < order; i++) {  /* message */
        for (j = 1; j < order; j++) {  /* key */
            for (k = 1; k < order; k++) {  /* nonce */
                const int starting_k = k;
                secp256k1_ecdsa_signature sig;
                secp256k1_scalar sk, msg, r, s, expected_r;
                unsigned char sk32[32], msg32[32];
                FUNC5(&msg, i);
                FUNC5(&sk, j);
                FUNC4(sk32, &sk);
                FUNC4(msg32, &msg);

                FUNC2(ctx, &sig, msg32, sk32, secp256k1_nonce_function_smallint, &k);

                FUNC3(ctx, &r, &s, &sig);
                /* Note that we compute expected_r *after* signing -- this is important
                 * because our nonce-computing function function might change k during
                 * signing. */
                FUNC1(&expected_r, group, k);
                FUNC0(r == expected_r);
                FUNC0((k * s) % order == (i + r * j) % order ||
                      (k * (EXHAUSTIVE_TEST_ORDER - s)) % order == (i + r * j) % order);

                /* Overflow means we've tried every possible nonce */
                if (k < starting_k) {
                    break;
                }
            }
        }
    }

    /* We would like to verify zero-knowledge here by counting how often every
     * possible (s, r) tuple appears, but because the group order is larger
     * than the field order, when coercing the x-values to scalar values, some
     * appear more often than others, so we are actually not zero-knowledge.
     * (This effect also appears in the real code, but the difference is on the
     * order of 1/2^128th the field order, so the deviation is not useful to a
     * computationally bounded attacker.)
     */
}