
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Z; int Y; int X; } ;
typedef TYPE_1__ ge25519_p3 ;
struct TYPE_6__ {int Z; int Y; int X; } ;
typedef TYPE_2__ ge25519_p2 ;


 int fe25519_copy (int ,int ) ;

__attribute__((used)) static void
ge25519_p3_to_p2(ge25519_p2 *r, const ge25519_p3 *p)
{
    fe25519_copy(r->X, p->X);
    fe25519_copy(r->Y, p->Y);
    fe25519_copy(r->Z, p->Z);
}
