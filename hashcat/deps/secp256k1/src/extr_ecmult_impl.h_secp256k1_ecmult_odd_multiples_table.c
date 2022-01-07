
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int z; scalar_t__ infinity; int y; int x; } ;
typedef TYPE_1__ secp256k1_gej ;
struct TYPE_13__ {int y; int x; scalar_t__ infinity; } ;
typedef TYPE_2__ secp256k1_ge ;
typedef int secp256k1_fe ;


 int VERIFY_CHECK (int) ;
 int secp256k1_fe_mul (int *,int *,int *) ;
 int secp256k1_ge_set_gej_zinv (TYPE_2__*,TYPE_1__ const*,int *) ;
 int secp256k1_gej_add_ge_var (TYPE_1__*,TYPE_1__*,TYPE_2__*,int *) ;
 int secp256k1_gej_double_var (TYPE_1__*,TYPE_1__ const*,int *) ;

__attribute__((used)) static void secp256k1_ecmult_odd_multiples_table(int n, secp256k1_gej *prej, secp256k1_fe *zr, const secp256k1_gej *a) {
    secp256k1_gej d;
    secp256k1_ge a_ge, d_ge;
    int i;

    VERIFY_CHECK(!a->infinity);

    secp256k1_gej_double_var(&d, a, ((void*)0));





    d_ge.x = d.x;
    d_ge.y = d.y;
    d_ge.infinity = 0;

    secp256k1_ge_set_gej_zinv(&a_ge, a, &d.z);
    prej[0].x = a_ge.x;
    prej[0].y = a_ge.y;
    prej[0].z = a->z;
    prej[0].infinity = 0;

    zr[0] = d.z;
    for (i = 1; i < n; i++) {
        secp256k1_gej_add_ge_var(&prej[i], &prej[i-1], &d_ge, &zr[i]);
    }





    secp256k1_fe_mul(&prej[n-1].z, &prej[n-1].z, &d.z);
}
