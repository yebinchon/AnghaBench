
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;


 int CHECK (int) ;
 int secp256k1_ecmult_wnaf (int*,int,int const*,int) ;
 int secp256k1_scalar_add (int *,int *,int *) ;
 int secp256k1_scalar_eq (int *,int const*) ;
 int secp256k1_scalar_mul (int *,int *,int *) ;
 int secp256k1_scalar_negate (int *,int *) ;
 int secp256k1_scalar_set_int (int *,int) ;

void test_wnaf(const secp256k1_scalar *number, int w) {
    secp256k1_scalar x, two, t;
    int wnaf[256];
    int zeroes = -1;
    int i;
    int bits;
    secp256k1_scalar_set_int(&x, 0);
    secp256k1_scalar_set_int(&two, 2);
    bits = secp256k1_ecmult_wnaf(wnaf, 256, number, w);
    CHECK(bits <= 256);
    for (i = bits-1; i >= 0; i--) {
        int v = wnaf[i];
        secp256k1_scalar_mul(&x, &x, &two);
        if (v) {
            CHECK(zeroes == -1 || zeroes >= w-1);
            zeroes=0;
            CHECK((v & 1) == 1);
            CHECK(v <= (1 << (w-1)) - 1);
            CHECK(v >= -(1 << (w-1)) - 1);
        } else {
            CHECK(zeroes != -1);
            zeroes++;
        }
        if (v >= 0) {
            secp256k1_scalar_set_int(&t, v);
        } else {
            secp256k1_scalar_set_int(&t, -v);
            secp256k1_scalar_negate(&t, &t);
        }
        secp256k1_scalar_add(&x, &x, &t);
    }
    CHECK(secp256k1_scalar_eq(&x, number));
}
