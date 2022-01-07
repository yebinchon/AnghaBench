
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;


 int CHECK (int) ;
 int WNAF_SIZE_BITS (int,int) ;
 int secp256k1_scalar_add (int *,int *,int *) ;
 int secp256k1_scalar_cadd_bit (int *,int,int) ;
 int secp256k1_scalar_eq (int *,int *) ;
 int secp256k1_scalar_mul (int *,int *,int *) ;
 int secp256k1_scalar_negate (int *,int *) ;
 int secp256k1_scalar_set_int (int *,int) ;
 int secp256k1_scalar_shr_int (int *,int) ;
 int secp256k1_wnaf_const (int*,int *,int,int) ;

void test_constant_wnaf(const secp256k1_scalar *number, int w) {
    secp256k1_scalar x, shift;
    int wnaf[256] = {0};
    int i;
    int skew;
    int bits = 256;
    secp256k1_scalar num = *number;

    secp256k1_scalar_set_int(&x, 0);
    secp256k1_scalar_set_int(&shift, 1 << w);







    skew = secp256k1_wnaf_const(wnaf, &num, w, bits);

    for (i = WNAF_SIZE_BITS(bits, w); i >= 0; --i) {
        secp256k1_scalar t;
        int v = wnaf[i];
        CHECK(v != 0);
        CHECK(v & 1);
        CHECK(v > -(1 << w));
        CHECK(v < (1 << w));

        secp256k1_scalar_mul(&x, &x, &shift);
        if (v >= 0) {
            secp256k1_scalar_set_int(&t, v);
        } else {
            secp256k1_scalar_set_int(&t, -v);
            secp256k1_scalar_negate(&t, &t);
        }
        secp256k1_scalar_add(&x, &x, &t);
    }

    secp256k1_scalar_cadd_bit(&num, skew == 2, 1);
    CHECK(secp256k1_scalar_eq(&x, &num));
}
