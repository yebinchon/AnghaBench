
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_fe ;


 int SECP256K1_FE_CONST (int ,int ,int ,int ,int ,int ,int ,int) ;
 int check_fe_equal (int *,int *) ;
 int secp256k1_fe_mul (int *,int const*,int const*) ;

int check_fe_inverse(const secp256k1_fe *a, const secp256k1_fe *ai) {
    secp256k1_fe x;
    secp256k1_fe one = SECP256K1_FE_CONST(0, 0, 0, 0, 0, 0, 0, 1);
    secp256k1_fe_mul(&x, a, ai);
    return check_fe_equal(&x, &one);
}
