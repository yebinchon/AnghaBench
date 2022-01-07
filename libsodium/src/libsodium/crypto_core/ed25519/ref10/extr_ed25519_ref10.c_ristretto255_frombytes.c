
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Y; int T; int X; int Z; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int fe25519 ;


 int d ;
 int fe25519_1 (int ) ;
 int fe25519_abs (int ,int ) ;
 int fe25519_add (int ,int ,int ) ;
 int fe25519_frombytes (int ,unsigned char const*) ;
 int fe25519_isnegative (int ) ;
 int fe25519_iszero (int ) ;
 int fe25519_mul (int ,int ,int ) ;
 int fe25519_neg (int ,int ) ;
 int fe25519_sq (int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;
 scalar_t__ ristretto255_is_canonical (unsigned char const*) ;
 int ristretto255_sqrt_ratio_m1 (int ,int ,int ) ;

int
ristretto255_frombytes(ge25519_p3 *h, const unsigned char *s)
{
    fe25519 inv_sqrt;
    fe25519 one;
    fe25519 s_;
    fe25519 ss;
    fe25519 u1, u2;
    fe25519 u1u1, u2u2;
    fe25519 v;
    fe25519 v_u2u2;
    int was_square;

    if (ristretto255_is_canonical(s) == 0) {
        return -1;
    }
    fe25519_frombytes(s_, s);
    fe25519_sq(ss, s_);

    fe25519_1(u1);
    fe25519_sub(u1, u1, ss);
    fe25519_sq(u1u1, u1);

    fe25519_1(u2);
    fe25519_add(u2, u2, ss);
    fe25519_sq(u2u2, u2);

    fe25519_mul(v, d, u1u1);
    fe25519_neg(v, v);
    fe25519_sub(v, v, u2u2);

    fe25519_mul(v_u2u2, v, u2u2);

    fe25519_1(one);
    was_square = ristretto255_sqrt_ratio_m1(inv_sqrt, one, v_u2u2);
    fe25519_mul(h->X, inv_sqrt, u2);
    fe25519_mul(h->Y, inv_sqrt, h->X);
    fe25519_mul(h->Y, h->Y, v);

    fe25519_mul(h->X, h->X, s_);
    fe25519_add(h->X, h->X, h->X);
    fe25519_abs(h->X, h->X);
    fe25519_mul(h->Y, u1, h->Y);
    fe25519_1(h->Z);
    fe25519_mul(h->T, h->X, h->Y);

    return - ((1 - was_square) |
              fe25519_isnegative(h->T) | fe25519_iszero(h->Y));
}
