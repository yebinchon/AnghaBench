
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xy2d; int yminusx; int yplusx; } ;
typedef TYPE_1__ ge25519_precomp ;


 int fe25519_0 (int ) ;
 int fe25519_1 (int ) ;

__attribute__((used)) static void
ge25519_precomp_0(ge25519_precomp *h)
{
    fe25519_1(h->yplusx);
    fe25519_1(h->yminusx);
    fe25519_0(h->xy2d);
}
