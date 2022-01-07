
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Z; int Y; int X; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int fe25519 ;


 int d ;
 int fe25519_add (int ,int ,int ) ;
 int fe25519_iszero (int ) ;
 int fe25519_mul (int ,int ,int ) ;
 int fe25519_sq (int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;

int
ge25519_is_on_curve(const ge25519_p3 *p)
{
    fe25519 x2;
    fe25519 y2;
    fe25519 z2;
    fe25519 z4;
    fe25519 t0;
    fe25519 t1;

    fe25519_sq(x2, p->X);
    fe25519_sq(y2, p->Y);
    fe25519_sq(z2, p->Z);
    fe25519_sub(t0, y2, x2);
    fe25519_mul(t0, t0, z2);

    fe25519_mul(t1, x2, y2);
    fe25519_mul(t1, t1, d);
    fe25519_sq(z4, z2);
    fe25519_add(t1, t1, z4);
    fe25519_sub(t0, t0, t1);

    return fe25519_iszero(t0);
}
