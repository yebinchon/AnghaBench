
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_sha256 ;
struct TYPE_3__ {int inner; int outer; } ;
typedef TYPE_1__ secp256k1_hmac_sha256 ;
typedef int rkey ;


 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int secp256k1_sha256_finalize (int *,unsigned char*) ;
 int secp256k1_sha256_initialize (int *) ;
 int secp256k1_sha256_write (int *,unsigned char const*,int) ;

__attribute__((used)) static void secp256k1_hmac_sha256_initialize(secp256k1_hmac_sha256 *hash, const unsigned char *key, size_t keylen) {
    size_t n;
    unsigned char rkey[64];
    if (keylen <= sizeof(rkey)) {
        memcpy(rkey, key, keylen);
        memset(rkey + keylen, 0, sizeof(rkey) - keylen);
    } else {
        secp256k1_sha256 sha256;
        secp256k1_sha256_initialize(&sha256);
        secp256k1_sha256_write(&sha256, key, keylen);
        secp256k1_sha256_finalize(&sha256, rkey);
        memset(rkey + 32, 0, 32);
    }

    secp256k1_sha256_initialize(&hash->outer);
    for (n = 0; n < sizeof(rkey); n++) {
        rkey[n] ^= 0x5c;
    }
    secp256k1_sha256_write(&hash->outer, rkey, sizeof(rkey));

    secp256k1_sha256_initialize(&hash->inner);
    for (n = 0; n < sizeof(rkey); n++) {
        rkey[n] ^= 0x5c ^ 0x36;
    }
    secp256k1_sha256_write(&hash->inner, rkey, sizeof(rkey));
    memset(rkey, 0, sizeof(rkey));
}
