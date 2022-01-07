
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_ge ;
typedef int secp256k1_fe ;


 unsigned char const SECP256K1_TAG_PUBKEY_EVEN ;
 unsigned char const SECP256K1_TAG_PUBKEY_HYBRID_EVEN ;
 unsigned char const SECP256K1_TAG_PUBKEY_HYBRID_ODD ;
 unsigned char const SECP256K1_TAG_PUBKEY_ODD ;
 unsigned char const SECP256K1_TAG_PUBKEY_UNCOMPRESSED ;
 int secp256k1_fe_is_odd (int *) ;
 scalar_t__ secp256k1_fe_set_b32 (int *,unsigned char const*) ;
 int secp256k1_ge_is_valid_var (int *) ;
 scalar_t__ secp256k1_ge_set_xo_var (int *,int *,int) ;
 int secp256k1_ge_set_xy (int *,int *,int *) ;

__attribute__((used)) static int secp256k1_eckey_pubkey_parse(secp256k1_ge *elem, const unsigned char *pub, size_t size) {
    if (size == 33 && (pub[0] == SECP256K1_TAG_PUBKEY_EVEN || pub[0] == SECP256K1_TAG_PUBKEY_ODD)) {
        secp256k1_fe x;
        return secp256k1_fe_set_b32(&x, pub+1) && secp256k1_ge_set_xo_var(elem, &x, pub[0] == SECP256K1_TAG_PUBKEY_ODD);
    } else if (size == 65 && (pub[0] == SECP256K1_TAG_PUBKEY_UNCOMPRESSED || pub[0] == SECP256K1_TAG_PUBKEY_HYBRID_EVEN || pub[0] == SECP256K1_TAG_PUBKEY_HYBRID_ODD)) {
        secp256k1_fe x, y;
        if (!secp256k1_fe_set_b32(&x, pub+1) || !secp256k1_fe_set_b32(&y, pub+33)) {
            return 0;
        }
        secp256k1_ge_set_xy(elem, &x, &y);
        if ((pub[0] == SECP256K1_TAG_PUBKEY_HYBRID_EVEN || pub[0] == SECP256K1_TAG_PUBKEY_HYBRID_ODD) &&
            secp256k1_fe_is_odd(&y) != (pub[0] == SECP256K1_TAG_PUBKEY_HYBRID_ODD)) {
            return 0;
        }
        return secp256k1_ge_is_valid_var(elem);
    } else {
        return 0;
    }
}
