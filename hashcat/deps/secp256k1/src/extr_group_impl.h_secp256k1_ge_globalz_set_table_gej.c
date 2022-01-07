
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int z; int y; int x; } ;
typedef TYPE_1__ secp256k1_gej ;
struct TYPE_8__ {scalar_t__ infinity; int y; int x; } ;
typedef TYPE_2__ secp256k1_ge ;
typedef int secp256k1_fe ;


 int secp256k1_fe_mul (int *,int *,int const*) ;
 int secp256k1_fe_normalize_weak (int *) ;
 int secp256k1_ge_set_gej_zinv (TYPE_2__*,TYPE_1__ const*,int *) ;

__attribute__((used)) static void secp256k1_ge_globalz_set_table_gej(size_t len, secp256k1_ge *r, secp256k1_fe *globalz, const secp256k1_gej *a, const secp256k1_fe *zr) {
    size_t i = len - 1;
    secp256k1_fe zs;

    if (len > 0) {

        r[i].x = a[i].x;
        r[i].y = a[i].y;

        secp256k1_fe_normalize_weak(&r[i].y);
        *globalz = a[i].z;
        r[i].infinity = 0;
        zs = zr[i];


        while (i > 0) {
            if (i != len - 1) {
                secp256k1_fe_mul(&zs, &zs, &zr[i]);
            }
            i--;
            secp256k1_ge_set_gej_zinv(&r[i], &a[i], &zs);
        }
    }
}
