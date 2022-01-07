
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytes; scalar_t__ buf; int s; } ;
typedef TYPE_1__ secp256k1_sha256 ;


 int VERIFY_CHECK (int) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int secp256k1_sha256_transform (int ,scalar_t__) ;

__attribute__((used)) static void secp256k1_sha256_write(secp256k1_sha256 *hash, const unsigned char *data, size_t len) {
    size_t bufsize = hash->bytes & 0x3F;
    hash->bytes += len;
    VERIFY_CHECK(hash->bytes >= len);
    while (len >= 64 - bufsize) {

        size_t chunk_len = 64 - bufsize;
        memcpy(((unsigned char*)hash->buf) + bufsize, data, chunk_len);
        data += chunk_len;
        len -= chunk_len;
        secp256k1_sha256_transform(hash->s, hash->buf);
        bufsize = 0;
    }
    if (len) {

        memcpy(((unsigned char*)hash->buf) + bufsize, data, len);
    }
}
