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
typedef  scalar_t__ secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_ecdsa_signature ;
typedef  int /*<<< orphan*/  secp256k1_context ;
typedef  int /*<<< orphan*/  nonconst_ge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int FUNC7 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int) ; 

void FUNC12(const secp256k1_context *ctx, const secp256k1_ge *group, int order) {
    int s, r, msg, key;
    for (s = 1; s < order; s++) {
        for (r = 1; r < order; r++) {
            for (msg = 1; msg < order; msg++) {
                for (key = 1; key < order; key++) {
                    secp256k1_ge nonconst_ge;
                    secp256k1_ecdsa_signature sig;
                    secp256k1_pubkey pk;
                    secp256k1_scalar sk_s, msg_s, r_s, s_s;
                    secp256k1_scalar s_times_k_s, msg_plus_r_times_sk_s;
                    int k, should_verify;
                    unsigned char msg32[32];

                    FUNC11(&s_s, s);
                    FUNC11(&r_s, r);
                    FUNC11(&msg_s, msg);
                    FUNC11(&sk_s, key);

                    /* Verify by hand */
                    /* Run through every k value that gives us this r and check that *one* works.
                     * Note there could be none, there could be multiple, ECDSA is weird. */
                    should_verify = 0;
                    for (k = 0; k < order; k++) {
                        secp256k1_scalar check_x_s;
                        FUNC2(&check_x_s, group, k);
                        if (r_s == check_x_s) {
                            FUNC11(&s_times_k_s, k);
                            FUNC10(&s_times_k_s, &s_times_k_s, &s_s);
                            FUNC10(&msg_plus_r_times_sk_s, &r_s, &sk_s);
                            FUNC6(&msg_plus_r_times_sk_s, &msg_plus_r_times_sk_s, &msg_s);
                            should_verify |= FUNC7(&s_times_k_s, &msg_plus_r_times_sk_s);
                        }
                    }
                    /* nb we have a "high s" rule */
                    should_verify &= !FUNC9(&s_s);

                    /* Verify by calling verify */
                    FUNC3(&sig, &r_s, &s_s);
                    FUNC1(&nonconst_ge, &group[sk_s], sizeof(nonconst_ge));
                    FUNC5(&pk, &nonconst_ge);
                    FUNC8(msg32, &msg_s);
                    FUNC0(should_verify ==
                          FUNC4(ctx, &sig, msg32, &pk));
                }
            }
        }
    }
}