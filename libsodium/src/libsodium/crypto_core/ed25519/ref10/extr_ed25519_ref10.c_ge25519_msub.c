
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int xy2d; int yplusx; int yminusx; } ;
typedef TYPE_1__ ge25519_precomp ;
struct TYPE_8__ {int Z; int T; int X; int Y; } ;
typedef TYPE_2__ ge25519_p3 ;
struct TYPE_9__ {int T; int Z; int Y; int X; } ;
typedef TYPE_3__ ge25519_p1p1 ;
typedef int fe25519 ;


 int fe25519_add (int ,int ,int ) ;
 int fe25519_mul (int ,int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;

__attribute__((used)) static void
ge25519_msub(ge25519_p1p1 *r, const ge25519_p3 *p, const ge25519_precomp *q)
{
    fe25519 t0;

    fe25519_add(r->X, p->Y, p->X);
    fe25519_sub(r->Y, p->Y, p->X);
    fe25519_mul(r->Z, r->X, q->yminusx);
    fe25519_mul(r->Y, r->Y, q->yplusx);
    fe25519_mul(r->T, q->xy2d, p->T);
    fe25519_add(t0, p->Z, p->Z);
    fe25519_sub(r->X, r->Z, r->Y);
    fe25519_add(r->Y, r->Z, r->Y);
    fe25519_sub(r->Z, t0, r->T);
    fe25519_add(r->T, t0, r->T);
}
