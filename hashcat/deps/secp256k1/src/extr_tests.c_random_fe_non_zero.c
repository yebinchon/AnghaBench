
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_fe ;


 int CHECK (int) ;
 int random_fe (int *) ;
 int secp256k1_fe_is_zero (int *) ;
 int secp256k1_fe_normalize (int *) ;

void random_fe_non_zero(secp256k1_fe *nz) {
    int tries = 10;
    while (--tries >= 0) {
        random_fe(nz);
        secp256k1_fe_normalize(nz);
        if (!secp256k1_fe_is_zero(nz)) {
            break;
        }
    }

    CHECK(tries >= 0);
}
