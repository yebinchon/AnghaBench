
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int X; } ;
typedef TYPE_1__ ge25519_p3 ;


 int fe25519_iszero (int ) ;
 int ge25519_mul_l (TYPE_1__*,TYPE_1__ const*) ;

int
ge25519_is_on_main_subgroup(const ge25519_p3 *p)
{
    ge25519_p3 pl;

    ge25519_mul_l(&pl, p);

    return fe25519_iszero(pl.X);
}
