
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_fe ;


 int CHECK (int) ;
 int secp256k1_fe_add (int *,int const*) ;
 scalar_t__ secp256k1_fe_is_zero (int *) ;
 int secp256k1_fe_negate (int *,int *,int) ;
 int secp256k1_fe_normalize (int *) ;
 int secp256k1_fe_sqrt (int *,int const*) ;

void test_sqrt(const secp256k1_fe *a, const secp256k1_fe *k) {
    secp256k1_fe r1, r2;
    int v = secp256k1_fe_sqrt(&r1, a);
    CHECK((v == 0) == (k == ((void*)0)));

    if (k != ((void*)0)) {

        secp256k1_fe_negate(&r2, &r1, 1);
        secp256k1_fe_add(&r1, k); secp256k1_fe_add(&r2, k);
        secp256k1_fe_normalize(&r1); secp256k1_fe_normalize(&r2);
        CHECK(secp256k1_fe_is_zero(&r1) || secp256k1_fe_is_zero(&r2));
    }
}
