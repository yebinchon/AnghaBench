
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outer; int inner; } ;
typedef TYPE_1__ secp256k1_hmac_sha256 ;


 int memset (unsigned char*,int ,int) ;
 int secp256k1_sha256_finalize (int *,unsigned char*) ;
 int secp256k1_sha256_write (int *,unsigned char*,int) ;

__attribute__((used)) static void secp256k1_hmac_sha256_finalize(secp256k1_hmac_sha256 *hash, unsigned char *out32) {
    unsigned char temp[32];
    secp256k1_sha256_finalize(&hash->inner, temp);
    secp256k1_sha256_write(&hash->outer, temp, 32);
    memset(temp, 0, 32);
    secp256k1_sha256_finalize(&hash->outer, out32);
}
