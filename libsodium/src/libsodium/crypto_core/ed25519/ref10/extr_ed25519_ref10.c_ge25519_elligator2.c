
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;
typedef int ge25519_p2 ;
typedef int ge25519_p1p1 ;
typedef int * fe25519 ;


 int abort () ;
 int chi25519 (int *,int *) ;
 int * curve25519_A ;
 int fe25519_0 (int *) ;
 int fe25519_1 (int *) ;
 int fe25519_add (int *,int *,int *) ;
 int fe25519_cmov (int *,int *,unsigned int) ;
 int fe25519_invert (int *,int *) ;
 int fe25519_mul (int *,int *,int *) ;
 int fe25519_neg (int *,int *) ;
 int fe25519_sq (int *,int *) ;
 int fe25519_sq2 (int *,int * const) ;
 int fe25519_sub (int *,int *,int *) ;
 int fe25519_tobytes (unsigned char*,int *) ;
 scalar_t__ ge25519_frombytes (int *,unsigned char*) ;
 int ge25519_p1p1_to_p2 (int *,int *) ;
 int ge25519_p1p1_to_p3 (int *,int *) ;
 int ge25519_p2_dbl (int *,int *) ;
 int ge25519_p3_dbl (int *,int *) ;
 int ge25519_p3_tobytes (unsigned char*,int *) ;

__attribute__((used)) static void
ge25519_elligator2(unsigned char s[32], const fe25519 r, const unsigned char x_sign)
{
    fe25519 e;
    fe25519 negx;
    fe25519 rr2;
    fe25519 x, x2, x3;
    ge25519_p3 p3;
    ge25519_p1p1 p1;
    ge25519_p2 p2;
    unsigned int e_is_minus_1;

    fe25519_sq2(rr2, r);
    rr2[0]++;
    fe25519_invert(rr2, rr2);
    fe25519_mul(x, curve25519_A, rr2);
    fe25519_neg(x, x);

    fe25519_sq(x2, x);
    fe25519_mul(x3, x, x2);
    fe25519_add(e, x3, x);
    fe25519_mul(x2, x2, curve25519_A);
    fe25519_add(e, x2, e);

    chi25519(e, e);

    fe25519_tobytes(s, e);
    e_is_minus_1 = s[1] & 1;
    fe25519_neg(negx, x);
    fe25519_cmov(x, negx, e_is_minus_1);
    fe25519_0(x2);
    fe25519_cmov(x2, curve25519_A, e_is_minus_1);
    fe25519_sub(x, x, x2);


    {
        fe25519 one;
        fe25519 x_plus_one;
        fe25519 x_plus_one_inv;
        fe25519 x_minus_one;
        fe25519 yed;

        fe25519_1(one);
        fe25519_add(x_plus_one, x, one);
        fe25519_sub(x_minus_one, x, one);
        fe25519_invert(x_plus_one_inv, x_plus_one);
        fe25519_mul(yed, x_minus_one, x_plus_one_inv);
        fe25519_tobytes(s, yed);
    }


    s[31] |= x_sign;
    if (ge25519_frombytes(&p3, s) != 0) {
        abort();
    }


    ge25519_p3_dbl(&p1, &p3);
    ge25519_p1p1_to_p2(&p2, &p1);
    ge25519_p2_dbl(&p1, &p2);
    ge25519_p1p1_to_p2(&p2, &p1);
    ge25519_p2_dbl(&p1, &p2);
    ge25519_p1p1_to_p3(&p3, &p1);

    ge25519_p3_tobytes(s, &p3);
}
