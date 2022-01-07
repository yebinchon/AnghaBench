
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * d; int * w; } ;
typedef TYPE_1__ escrypt_block_t ;



__attribute__((used)) static inline void
blkxor(escrypt_block_t *dest, const escrypt_block_t *src, size_t len)
{
    size_t i, L;







    L = (len >> 3);
    for (i = 0; i < L; ++i) {
        dest->d[i] ^= src->d[i];
    }

}
