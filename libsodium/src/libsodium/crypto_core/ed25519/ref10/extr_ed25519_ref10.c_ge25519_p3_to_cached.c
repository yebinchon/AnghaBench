
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int T; int Z; int X; int Y; } ;
typedef TYPE_1__ ge25519_p3 ;
struct TYPE_6__ {int T2d; int Z; int YminusX; int YplusX; } ;
typedef TYPE_2__ ge25519_cached ;


 int d2 ;
 int fe25519_add (int ,int ,int ) ;
 int fe25519_copy (int ,int ) ;
 int fe25519_mul (int ,int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;

void
ge25519_p3_to_cached(ge25519_cached *r, const ge25519_p3 *p)
{
    fe25519_add(r->YplusX, p->Y, p->X);
    fe25519_sub(r->YminusX, p->Y, p->X);
    fe25519_copy(r->Z, p->Z);
    fe25519_mul(r->T2d, p->T, d2);
}
