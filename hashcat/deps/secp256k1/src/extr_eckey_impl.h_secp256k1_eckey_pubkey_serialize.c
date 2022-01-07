
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ secp256k1_ge ;


 unsigned char SECP256K1_TAG_PUBKEY_EVEN ;
 unsigned char SECP256K1_TAG_PUBKEY_ODD ;
 unsigned char SECP256K1_TAG_PUBKEY_UNCOMPRESSED ;
 int secp256k1_fe_get_b32 (unsigned char*,int *) ;
 scalar_t__ secp256k1_fe_is_odd (int *) ;
 int secp256k1_fe_normalize_var (int *) ;
 scalar_t__ secp256k1_ge_is_infinity (TYPE_1__*) ;

__attribute__((used)) static int secp256k1_eckey_pubkey_serialize(secp256k1_ge *elem, unsigned char *pub, size_t *size, int compressed) {
    if (secp256k1_ge_is_infinity(elem)) {
        return 0;
    }
    secp256k1_fe_normalize_var(&elem->x);
    secp256k1_fe_normalize_var(&elem->y);
    secp256k1_fe_get_b32(&pub[1], &elem->x);
    if (compressed) {
        *size = 33;
        pub[0] = secp256k1_fe_is_odd(&elem->y) ? SECP256K1_TAG_PUBKEY_ODD : SECP256K1_TAG_PUBKEY_EVEN;
    } else {
        *size = 65;
        pub[0] = SECP256K1_TAG_PUBKEY_UNCOMPRESSED;
        secp256k1_fe_get_b32(&pub[33], &elem->y);
    }
    return 1;
}
