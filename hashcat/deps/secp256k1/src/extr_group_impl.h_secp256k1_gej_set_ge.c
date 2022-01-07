
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z; int y; int x; int infinity; } ;
typedef TYPE_1__ secp256k1_gej ;
struct TYPE_6__ {int y; int x; int infinity; } ;
typedef TYPE_2__ secp256k1_ge ;


 int secp256k1_fe_set_int (int *,int) ;

__attribute__((used)) static void secp256k1_gej_set_ge(secp256k1_gej *r, const secp256k1_ge *a) {
   r->infinity = a->infinity;
   r->x = a->x;
   r->y = a->y;
   secp256k1_fe_set_int(&r->z, 1);
}
