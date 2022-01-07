
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_num ;



 int secp256k1_num_set_bin (int *,unsigned char const*,int) ;

__attribute__((used)) static void secp256k1_scalar_order_get_num(secp256k1_num *r) {

    static const unsigned char order[32] = {
        0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,128
    };
    secp256k1_num_set_bin(r, order, 32);
}
