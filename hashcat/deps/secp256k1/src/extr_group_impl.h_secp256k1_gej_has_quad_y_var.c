
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z; int y; scalar_t__ infinity; } ;
typedef TYPE_1__ secp256k1_gej ;
typedef int secp256k1_fe ;


 int secp256k1_fe_is_quad_var (int *) ;
 int secp256k1_fe_mul (int *,int *,int *) ;

__attribute__((used)) static int secp256k1_gej_has_quad_y_var(const secp256k1_gej *a) {
    secp256k1_fe yz;

    if (a->infinity) {
        return 0;
    }




    secp256k1_fe_mul(&yz, &a->y, &a->z);
    return secp256k1_fe_is_quad_var(&yz);
}
