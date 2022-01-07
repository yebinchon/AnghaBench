
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int T; int Z; int Y; int X; } ;
typedef TYPE_1__ ge25519_p3 ;


 int fe25519_0 (int ) ;
 int fe25519_1 (int ) ;

__attribute__((used)) static void
ge25519_p3_0(ge25519_p3 *h)
{
    fe25519_0(h->X);
    fe25519_1(h->Y);
    fe25519_1(h->Z);
    fe25519_0(h->T);
}
