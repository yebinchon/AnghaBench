
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fe25519 ;


 int fe25519_0 (int ) ;
 int fe25519_1 (int ) ;
 int fe25519_add (int ,int ,int ) ;
 int fe25519_copy (int ,int ) ;
 int fe25519_cswap (int ,int ,unsigned int) ;
 int fe25519_frombytes (int ,unsigned char const*) ;
 int fe25519_invert (int ,int ) ;
 int fe25519_mul (int ,int ,int ) ;
 int fe25519_scalar_product (int ,int ,int) ;
 int fe25519_sq (int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;
 int fe25519_tobytes (unsigned char*,int ) ;
 scalar_t__ has_small_order (unsigned char const*) ;

__attribute__((used)) static int
crypto_scalarmult_curve25519_ref10(unsigned char *q,
                                   const unsigned char *n,
                                   const unsigned char *p)
{
    unsigned char *t = q;
    unsigned int i;
    fe25519 x1;
    fe25519 x2;
    fe25519 z2;
    fe25519 x3;
    fe25519 z3;
    fe25519 tmp0;
    fe25519 tmp1;
    int pos;
    unsigned int swap;
    unsigned int b;

    if (has_small_order(p)) {
        return -1;
    }
    for (i = 0; i < 32; i++) {
        t[i] = n[i];
    }
    t[0] &= 248;
    t[31] &= 127;
    t[31] |= 64;
    fe25519_frombytes(x1, p);
    fe25519_1(x2);
    fe25519_0(z2);
    fe25519_copy(x3, x1);
    fe25519_1(z3);

    swap = 0;
    for (pos = 254; pos >= 0; --pos) {
        b = t[pos / 8] >> (pos & 7);
        b &= 1;
        swap ^= b;
        fe25519_cswap(x2, x3, swap);
        fe25519_cswap(z2, z3, swap);
        swap = b;
        fe25519_sub(tmp0, x3, z3);
        fe25519_sub(tmp1, x2, z2);
        fe25519_add(x2, x2, z2);
        fe25519_add(z2, x3, z3);
        fe25519_mul(z3, tmp0, x2);
        fe25519_mul(z2, z2, tmp1);
        fe25519_sq(tmp0, tmp1);
        fe25519_sq(tmp1, x2);
        fe25519_add(x3, z3, z2);
        fe25519_sub(z2, z3, z2);
        fe25519_mul(x2, tmp1, tmp0);
        fe25519_sub(tmp1, tmp1, tmp0);
        fe25519_sq(z2, z2);
        fe25519_scalar_product(z3, tmp1, 121666);
        fe25519_sq(x3, x3);
        fe25519_add(tmp0, tmp0, z3);
        fe25519_mul(z3, x1, z2);
        fe25519_mul(z2, tmp1, tmp0);
    }
    fe25519_cswap(x2, x3, swap);
    fe25519_cswap(z2, z3, swap);

    fe25519_invert(z2, z2);
    fe25519_mul(x2, x2, z2);
    fe25519_tobytes(q, x2);

    return 0;
}
