
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ infinity; int z; } ;
typedef TYPE_1__ secp256k1_gej ;
struct TYPE_8__ {int x; scalar_t__ infinity; } ;
typedef TYPE_2__ secp256k1_ge ;
typedef int secp256k1_fe ;


 size_t SIZE_MAX ;
 int VERIFY_CHECK (int) ;
 int secp256k1_fe_inv_var (int *,int *) ;
 int secp256k1_fe_mul (int *,int *,int *) ;
 int secp256k1_ge_set_gej_zinv (TYPE_2__*,TYPE_1__ const*,int *) ;

__attribute__((used)) static void secp256k1_ge_set_all_gej_var(secp256k1_ge *r, const secp256k1_gej *a, size_t len) {
    secp256k1_fe u;
    size_t i;
    size_t last_i = SIZE_MAX;

    for (i = 0; i < len; i++) {
        if (!a[i].infinity) {

            if (last_i == SIZE_MAX) {
                r[i].x = a[i].z;
            } else {
                secp256k1_fe_mul(&r[i].x, &r[last_i].x, &a[i].z);
            }
            last_i = i;
        }
    }
    if (last_i == SIZE_MAX) {
        return;
    }
    secp256k1_fe_inv_var(&u, &r[last_i].x);

    i = last_i;
    while (i > 0) {
        i--;
        if (!a[i].infinity) {
            secp256k1_fe_mul(&r[last_i].x, &r[i].x, &u);
            secp256k1_fe_mul(&u, &u, &a[last_i].z);
            last_i = i;
        }
    }
    VERIFY_CHECK(!a[last_i].infinity);
    r[last_i].x = u;

    for (i = 0; i < len; i++) {
        r[i].infinity = a[i].infinity;
        if (!a[i].infinity) {
            secp256k1_ge_set_gej_zinv(&r[i], &a[i], &r[i].x);
        }
    }
}
