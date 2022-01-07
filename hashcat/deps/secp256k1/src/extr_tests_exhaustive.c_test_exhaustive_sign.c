
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;
typedef int secp256k1_ge ;
typedef int secp256k1_ecdsa_signature ;
typedef int secp256k1_context ;


 int CHECK (int) ;
 int EXHAUSTIVE_TEST_ORDER ;
 int r_from_k (int*,int const*,int) ;
 int secp256k1_ecdsa_sign (int const*,int *,unsigned char*,unsigned char*,int ,int*) ;
 int secp256k1_ecdsa_signature_load (int const*,int*,int*,int *) ;
 int secp256k1_nonce_function_smallint ;
 int secp256k1_scalar_get_b32 (unsigned char*,int*) ;
 int secp256k1_scalar_set_int (int*,int) ;

void test_exhaustive_sign(const secp256k1_context *ctx, const secp256k1_ge *group, int order) {
    int i, j, k;


    for (i = 1; i < order; i++) {
        for (j = 1; j < order; j++) {
            for (k = 1; k < order; k++) {
                const int starting_k = k;
                secp256k1_ecdsa_signature sig;
                secp256k1_scalar sk, msg, r, s, expected_r;
                unsigned char sk32[32], msg32[32];
                secp256k1_scalar_set_int(&msg, i);
                secp256k1_scalar_set_int(&sk, j);
                secp256k1_scalar_get_b32(sk32, &sk);
                secp256k1_scalar_get_b32(msg32, &msg);

                secp256k1_ecdsa_sign(ctx, &sig, msg32, sk32, secp256k1_nonce_function_smallint, &k);

                secp256k1_ecdsa_signature_load(ctx, &r, &s, &sig);



                r_from_k(&expected_r, group, k);
                CHECK(r == expected_r);
                CHECK((k * s) % order == (i + r * j) % order ||
                      (k * (EXHAUSTIVE_TEST_ORDER - s)) % order == (i + r * j) % order);


                if (k < starting_k) {
                    break;
                }
            }
        }
    }
}
