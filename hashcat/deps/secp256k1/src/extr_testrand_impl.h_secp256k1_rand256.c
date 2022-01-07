
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int secp256k1_rfc6979_hmac_sha256_generate (int *,unsigned char*,int) ;
 int secp256k1_test_rng ;

__attribute__((used)) static void secp256k1_rand256(unsigned char *b32) {
    secp256k1_rfc6979_hmac_sha256_generate(&secp256k1_test_rng, b32, 32);
}
