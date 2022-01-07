
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inner; } ;
typedef TYPE_1__ secp256k1_hmac_sha256 ;


 int secp256k1_sha256_write (int *,unsigned char const*,size_t) ;

__attribute__((used)) static void secp256k1_hmac_sha256_write(secp256k1_hmac_sha256 *hash, const unsigned char *data, size_t size) {
    secp256k1_sha256_write(&hash->inner, data, size);
}
