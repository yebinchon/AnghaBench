
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bufferOffset; int byteCount; int* state; } ;
typedef TYPE_1__ _picohash_sha1_ctx_t ;


 int _picohash_sha1_add_uncounted (TYPE_1__*,int) ;
 int memcpy (void*,int*,int) ;

inline void _picohash_sha1_final(_picohash_sha1_ctx_t *s, void *digest)
{

    _picohash_sha1_add_uncounted(s, 0x80);
    while (s->bufferOffset != 56)
        _picohash_sha1_add_uncounted(s, 0x00);


    _picohash_sha1_add_uncounted(s, s->byteCount >> 53);
    _picohash_sha1_add_uncounted(s, s->byteCount >> 45);
    _picohash_sha1_add_uncounted(s, s->byteCount >> 37);
    _picohash_sha1_add_uncounted(s, s->byteCount >> 29);
    _picohash_sha1_add_uncounted(s, s->byteCount >> 21);
    _picohash_sha1_add_uncounted(s, s->byteCount >> 13);
    _picohash_sha1_add_uncounted(s, s->byteCount >> 5);
    _picohash_sha1_add_uncounted(s, s->byteCount << 3);


    {
        int i;
        for (i = 0; i < 5; i++) {
            s->state[i] = (((s->state[i]) << 24) & 0xff000000) | (((s->state[i]) << 8) & 0x00ff0000) |
                          (((s->state[i]) >> 8) & 0x0000ff00) | (((s->state[i]) >> 24) & 0x000000ff);
        }
    }


    memcpy(digest, s->state, sizeof(s->state));
}
