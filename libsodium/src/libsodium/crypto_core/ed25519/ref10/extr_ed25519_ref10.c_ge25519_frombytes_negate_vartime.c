
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Y; int X; int T; int Z; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int fe25519 ;


 int d ;
 int fe25519_1 (int ) ;
 int fe25519_add (int ,int ,int ) ;
 int fe25519_frombytes (int ,unsigned char const*) ;
 unsigned char const fe25519_isnegative (int ) ;
 scalar_t__ fe25519_iszero (int ) ;
 int fe25519_mul (int ,int ,int ) ;
 int fe25519_neg (int ,int ) ;
 int fe25519_pow22523 (int ,int ) ;
 int fe25519_sq (int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;
 int sqrtm1 ;

int
ge25519_frombytes_negate_vartime(ge25519_p3 *h, const unsigned char *s)
{
    fe25519 u;
    fe25519 v;
    fe25519 v3;
    fe25519 vxx;
    fe25519 m_root_check, p_root_check;

    fe25519_frombytes(h->Y, s);
    fe25519_1(h->Z);
    fe25519_sq(u, h->Y);
    fe25519_mul(v, u, d);
    fe25519_sub(u, u, h->Z);
    fe25519_add(v, v, h->Z);

    fe25519_sq(v3, v);
    fe25519_mul(v3, v3, v);
    fe25519_sq(h->X, v3);
    fe25519_mul(h->X, h->X, v);
    fe25519_mul(h->X, h->X, u);

    fe25519_pow22523(h->X, h->X);
    fe25519_mul(h->X, h->X, v3);
    fe25519_mul(h->X, h->X, u);

    fe25519_sq(vxx, h->X);
    fe25519_mul(vxx, vxx, v);
    fe25519_sub(m_root_check, vxx, u);
    if (fe25519_iszero(m_root_check) == 0) {
        fe25519_add(p_root_check, vxx, u);
        if (fe25519_iszero(p_root_check) == 0) {
            return -1;
        }
        fe25519_mul(h->X, h->X, sqrtm1);
    }

    if (fe25519_isnegative(h->X) == (s[31] >> 7)) {
        fe25519_neg(h->X, h->X);
    }
    fe25519_mul(h->T, h->X, h->Y);

    return 0;
}
