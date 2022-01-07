
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secp256k1_pippenger_state {int* wnaf_na; struct secp256k1_pippenger_point_state* ps; } ;
struct secp256k1_pippenger_point_state {size_t input_pos; int skew_na; } ;
typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int const secp256k1_ge ;


 int ECMULT_TABLE_SIZE (int) ;
 size_t WNAF_SIZE (int) ;
 scalar_t__ secp256k1_ge_is_infinity (int const*) ;
 int secp256k1_ge_neg (int const*,int const*) ;
 int secp256k1_gej_add_ge_var (int *,int *,int const*,int *) ;
 int secp256k1_gej_add_var (int *,int *,int *,int *) ;
 int secp256k1_gej_double_var (int *,int *,int *) ;
 int secp256k1_gej_set_infinity (int *) ;
 scalar_t__ secp256k1_scalar_is_zero (int const*) ;
 int secp256k1_wnaf_fixed (int*,int const*,int) ;

__attribute__((used)) static int secp256k1_ecmult_pippenger_wnaf(secp256k1_gej *buckets, int bucket_window, struct secp256k1_pippenger_state *state, secp256k1_gej *r, const secp256k1_scalar *sc, const secp256k1_ge *pt, size_t num) {
    size_t n_wnaf = WNAF_SIZE(bucket_window+1);
    size_t np;
    size_t no = 0;
    int i;
    int j;

    for (np = 0; np < num; ++np) {
        if (secp256k1_scalar_is_zero(&sc[np]) || secp256k1_ge_is_infinity(&pt[np])) {
            continue;
        }
        state->ps[no].input_pos = np;
        state->ps[no].skew_na = secp256k1_wnaf_fixed(&state->wnaf_na[no*n_wnaf], &sc[np], bucket_window+1);
        no++;
    }
    secp256k1_gej_set_infinity(r);

    if (no == 0) {
        return 1;
    }

    for (i = n_wnaf - 1; i >= 0; i--) {
        secp256k1_gej running_sum;

        for(j = 0; j < ECMULT_TABLE_SIZE(bucket_window+2); j++) {
            secp256k1_gej_set_infinity(&buckets[j]);
        }

        for (np = 0; np < no; ++np) {
            int n = state->wnaf_na[np*n_wnaf + i];
            struct secp256k1_pippenger_point_state point_state = state->ps[np];
            secp256k1_ge tmp;
            int idx;

            if (i == 0) {

                int skew = point_state.skew_na;
                if (skew) {
                    secp256k1_ge_neg(&tmp, &pt[point_state.input_pos]);
                    secp256k1_gej_add_ge_var(&buckets[0], &buckets[0], &tmp, ((void*)0));
                }
            }
            if (n > 0) {
                idx = (n - 1)/2;
                secp256k1_gej_add_ge_var(&buckets[idx], &buckets[idx], &pt[point_state.input_pos], ((void*)0));
            } else if (n < 0) {
                idx = -(n + 1)/2;
                secp256k1_ge_neg(&tmp, &pt[point_state.input_pos]);
                secp256k1_gej_add_ge_var(&buckets[idx], &buckets[idx], &tmp, ((void*)0));
            }
        }

        for(j = 0; j < bucket_window; j++) {
            secp256k1_gej_double_var(r, r, ((void*)0));
        }

        secp256k1_gej_set_infinity(&running_sum);
        for(j = ECMULT_TABLE_SIZE(bucket_window+2) - 1; j > 0; j--) {
            secp256k1_gej_add_var(&running_sum, &running_sum, &buckets[j], ((void*)0));
            secp256k1_gej_add_var(r, r, &running_sum, ((void*)0));
        }

        secp256k1_gej_add_var(&running_sum, &running_sum, &buckets[0], ((void*)0));
        secp256k1_gej_double_var(r, r, ((void*)0));
        secp256k1_gej_add_var(r, r, &running_sum, ((void*)0));
    }
    return 1;
}
