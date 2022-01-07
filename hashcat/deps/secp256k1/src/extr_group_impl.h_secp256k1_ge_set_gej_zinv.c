
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int infinity; int const y; int const x; } ;
typedef TYPE_1__ secp256k1_gej ;
struct TYPE_6__ {int infinity; int const y; int const x; } ;
typedef TYPE_2__ secp256k1_ge ;
typedef int const secp256k1_fe ;


 int secp256k1_fe_mul (int const*,int const*,int const*) ;
 int secp256k1_fe_sqr (int const*,int const*) ;

__attribute__((used)) static void secp256k1_ge_set_gej_zinv(secp256k1_ge *r, const secp256k1_gej *a, const secp256k1_fe *zi) {
    secp256k1_fe zi2;
    secp256k1_fe zi3;
    secp256k1_fe_sqr(&zi2, zi);
    secp256k1_fe_mul(&zi3, &zi2, zi);
    secp256k1_fe_mul(&r->x, &a->x, &zi2);
    secp256k1_fe_mul(&r->y, &a->y, &zi3);
    r->infinity = a->infinity;
}
