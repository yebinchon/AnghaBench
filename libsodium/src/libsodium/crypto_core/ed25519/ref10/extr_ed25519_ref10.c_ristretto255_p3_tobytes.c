
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Z; int Y; int X; int T; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int fe25519 ;


 int fe25519_1 (int ) ;
 int fe25519_abs (int ,int ) ;
 int fe25519_add (int ,int ,int ) ;
 int fe25519_cmov (int ,int ,int) ;
 int fe25519_cneg (int ,int ,int) ;
 int fe25519_copy (int ,int ) ;
 int fe25519_isnegative (int ) ;
 int fe25519_mul (int ,int ,int ) ;
 int fe25519_sq (int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;
 int fe25519_tobytes (unsigned char*,int ) ;
 int invsqrtamd ;
 int ristretto255_sqrt_ratio_m1 (int ,int ,int ) ;
 int sqrtm1 ;

void
ristretto255_p3_tobytes(unsigned char *s, const ge25519_p3 *h)
{
    fe25519 den1, den2;
    fe25519 den_inv;
    fe25519 eden;
    fe25519 inv_sqrt;
    fe25519 ix, iy;
    fe25519 one;
    fe25519 s_;
    fe25519 t_z_inv;
    fe25519 u1, u2;
    fe25519 u1_u2u2;
    fe25519 x_, y_;
    fe25519 x_z_inv;
    fe25519 z_inv;
    fe25519 zmy;
    int rotate;

    fe25519_add(u1, h->Z, h->Y);
    fe25519_sub(zmy, h->Z, h->Y);
    fe25519_mul(u1, u1, zmy);
    fe25519_mul(u2, h->X, h->Y);

    fe25519_sq(u1_u2u2, u2);
    fe25519_mul(u1_u2u2, u1, u1_u2u2);

    fe25519_1(one);
    (void) ristretto255_sqrt_ratio_m1(inv_sqrt, one, u1_u2u2);
    fe25519_mul(den1, inv_sqrt, u1);
    fe25519_mul(den2, inv_sqrt, u2);
    fe25519_mul(z_inv, den1, den2);
    fe25519_mul(z_inv, z_inv, h->T);

    fe25519_mul(ix, h->X, sqrtm1);
    fe25519_mul(iy, h->Y, sqrtm1);
    fe25519_mul(eden, den1, invsqrtamd);

    fe25519_mul(t_z_inv, h->T, z_inv);
    rotate = fe25519_isnegative(t_z_inv);

    fe25519_copy(x_, h->X);
    fe25519_copy(y_, h->Y);
    fe25519_copy(den_inv, den2);

    fe25519_cmov(x_, iy, rotate);
    fe25519_cmov(y_, ix, rotate);
    fe25519_cmov(den_inv, eden, rotate);

    fe25519_mul(x_z_inv, x_, z_inv);
    fe25519_cneg(y_, y_, fe25519_isnegative(x_z_inv));

    fe25519_sub(s_, h->Z, y_);
    fe25519_mul(s_, den_inv, s_);
    fe25519_abs(s_, s_);
    fe25519_tobytes(s, s_);
}
