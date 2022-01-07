
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int infinity; int y; int x; } ;
typedef TYPE_1__ secp256k1_ge ;


 int secp256k1_fe_clear (int *) ;

__attribute__((used)) static void secp256k1_ge_set_infinity(secp256k1_ge *r) {
    r->infinity = 1;
    secp256k1_fe_clear(&r->x);
    secp256k1_fe_clear(&r->y);
}
