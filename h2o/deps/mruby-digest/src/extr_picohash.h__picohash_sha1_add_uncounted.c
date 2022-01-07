
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t bufferOffset; scalar_t__ buffer; } ;
typedef TYPE_1__ _picohash_sha1_ctx_t ;


 int PICOHASH_SHA1_BLOCK_LENGTH ;
 int _picohash_sha1_hash_block (TYPE_1__*) ;

__attribute__((used)) static inline void _picohash_sha1_add_uncounted(_picohash_sha1_ctx_t *s, uint8_t data)
{
    uint8_t *const b = (uint8_t *)s->buffer;



    b[s->bufferOffset ^ 3] = data;

    s->bufferOffset++;
    if (s->bufferOffset == PICOHASH_SHA1_BLOCK_LENGTH) {
        _picohash_sha1_hash_block(s);
        s->bufferOffset = 0;
    }
}
