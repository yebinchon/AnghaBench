
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const T; int const Z; int const Y; int const X; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int const fe25519 ;


 int const d ;
 int fe25519_1 (int const) ;
 int fe25519_abs (int const,int const) ;
 int fe25519_add (int const,int const,int const) ;
 int fe25519_cmov (int const,int const,int) ;
 int fe25519_mul (int const,int const,int const) ;
 int fe25519_neg (int const,int const) ;
 int fe25519_sq (int const,int const) ;
 int fe25519_sub (int const,int const,int const) ;
 int const onemsqd ;
 int ristretto255_sqrt_ratio_m1 (int const,int const,int const) ;
 int const sqdmone ;
 int const sqrtadm1 ;
 int const sqrtm1 ;

__attribute__((used)) static void
ristretto255_elligator(ge25519_p3 *p, const fe25519 t)
{
    fe25519 c;
    fe25519 n;
    fe25519 one;
    fe25519 r;
    fe25519 rpd;
    fe25519 s, s_prime;
    fe25519 ss;
    fe25519 u, v;
    fe25519 w0, w1, w2, w3;
    int wasnt_square;

    fe25519_1(one);
    fe25519_sq(r, t);
    fe25519_mul(r, sqrtm1, r);
    fe25519_add(u, r, one);
    fe25519_mul(u, u, onemsqd);
    fe25519_1(c);
    fe25519_neg(c, c);
    fe25519_add(rpd, r, d);
    fe25519_mul(v, r, d);
    fe25519_sub(v, c, v);
    fe25519_mul(v, v, rpd);

    wasnt_square = 1 - ristretto255_sqrt_ratio_m1(s, u, v);
    fe25519_mul(s_prime, s, t);
    fe25519_abs(s_prime, s_prime);
    fe25519_neg(s_prime, s_prime);
    fe25519_cmov(s, s_prime, wasnt_square);
    fe25519_cmov(c, r, wasnt_square);

    fe25519_sub(n, r, one);
    fe25519_mul(n, n, c);
    fe25519_mul(n, n, sqdmone);
    fe25519_sub(n, n, v);

    fe25519_add(w0, s, s);
    fe25519_mul(w0, w0, v);
    fe25519_mul(w1, n, sqrtadm1);
    fe25519_sq(ss, s);
    fe25519_sub(w2, one, ss);
    fe25519_add(w3, one, ss);

    fe25519_mul(p->X, w0, w3);
    fe25519_mul(p->Y, w2, w1);
    fe25519_mul(p->Z, w1, w3);
    fe25519_mul(p->T, w0, w2);
}
