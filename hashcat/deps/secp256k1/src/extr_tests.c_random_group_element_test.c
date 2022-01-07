
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int y; } ;
typedef TYPE_1__ secp256k1_ge ;
typedef int secp256k1_fe ;


 int random_field_element_test (int *) ;
 int secp256k1_fe_normalize (int *) ;
 scalar_t__ secp256k1_ge_set_xo_var (TYPE_1__*,int *,int ) ;
 int secp256k1_rand_bits (int) ;

void random_group_element_test(secp256k1_ge *ge) {
    secp256k1_fe fe;
    do {
        random_field_element_test(&fe);
        if (secp256k1_ge_set_xo_var(ge, &fe, secp256k1_rand_bits(1))) {
            secp256k1_fe_normalize(&ge->y);
            break;
        }
    } while(1);
}
