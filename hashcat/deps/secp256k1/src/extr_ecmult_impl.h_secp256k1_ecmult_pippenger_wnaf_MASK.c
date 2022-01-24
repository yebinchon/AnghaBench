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
struct secp256k1_pippenger_state {int* wnaf_na; struct secp256k1_pippenger_point_state* ps; } ;
struct secp256k1_pippenger_point_state {size_t input_pos; int skew_na; } ;
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  const secp256k1_ge ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 int FUNC9 (int*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC10(secp256k1_gej *buckets, int bucket_window, struct secp256k1_pippenger_state *state, secp256k1_gej *r, const secp256k1_scalar *sc, const secp256k1_ge *pt, size_t num) {
    size_t n_wnaf = FUNC1(bucket_window+1);
    size_t np;
    size_t no = 0;
    int i;
    int j;

    for (np = 0; np < num; ++np) {
        if (FUNC8(&sc[np]) || FUNC2(&pt[np])) {
            continue;
        }
        state->ps[no].input_pos = np;
        state->ps[no].skew_na = FUNC9(&state->wnaf_na[no*n_wnaf], &sc[np], bucket_window+1);
        no++;
    }
    FUNC7(r);

    if (no == 0) {
        return 1;
    }

    for (i = n_wnaf - 1; i >= 0; i--) {
        secp256k1_gej running_sum;

        for(j = 0; j < FUNC0(bucket_window+2); j++) {
            FUNC7(&buckets[j]);
        }

        for (np = 0; np < no; ++np) {
            int n = state->wnaf_na[np*n_wnaf + i];
            struct secp256k1_pippenger_point_state point_state = state->ps[np];
            secp256k1_ge tmp;
            int idx;

            if (i == 0) {
                /* correct for wnaf skew */
                int skew = point_state.skew_na;
                if (skew) {
                    FUNC3(&tmp, &pt[point_state.input_pos]);
                    FUNC4(&buckets[0], &buckets[0], &tmp, NULL);
                }
            }
            if (n > 0) {
                idx = (n - 1)/2;
                FUNC4(&buckets[idx], &buckets[idx], &pt[point_state.input_pos], NULL);
            } else if (n < 0) {
                idx = -(n + 1)/2;
                FUNC3(&tmp, &pt[point_state.input_pos]);
                FUNC4(&buckets[idx], &buckets[idx], &tmp, NULL);
            }
        }

        for(j = 0; j < bucket_window; j++) {
            FUNC6(r, r, NULL);
        }

        FUNC7(&running_sum);
        /* Accumulate the sum: bucket[0] + 3*bucket[1] + 5*bucket[2] + 7*bucket[3] + ...
         *                   = bucket[0] +   bucket[1] +   bucket[2] +   bucket[3] + ...
         *                   +         2 *  (bucket[1] + 2*bucket[2] + 3*bucket[3] + ...)
         * using an intermediate running sum:
         * running_sum = bucket[0] +   bucket[1] +   bucket[2] + ...
         *
         * The doubling is done implicitly by deferring the final window doubling (of 'r').
         */
        for(j = FUNC0(bucket_window+2) - 1; j > 0; j--) {
            FUNC5(&running_sum, &running_sum, &buckets[j], NULL);
            FUNC5(r, r, &running_sum, NULL);
        }

        FUNC5(&running_sum, &running_sum, &buckets[0], NULL);
        FUNC6(r, r, NULL);
        FUNC5(r, r, &running_sum, NULL);
    }
    return 1;
}