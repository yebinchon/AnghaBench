
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_ecdsa_signature ;


 scalar_t__ memcmp (int const*,unsigned char const*,int) ;

int is_empty_signature(const secp256k1_ecdsa_signature *sig) {
    static const unsigned char res[sizeof(secp256k1_ecdsa_signature)] = {0};
    return memcmp(sig, res, sizeof(secp256k1_ecdsa_signature)) == 0;
}
