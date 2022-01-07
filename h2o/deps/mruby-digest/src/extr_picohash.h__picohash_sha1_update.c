
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int byteCount; } ;
typedef TYPE_1__ _picohash_sha1_ctx_t ;


 int _picohash_sha1_add_uncounted (TYPE_1__*,int ) ;

inline void _picohash_sha1_update(_picohash_sha1_ctx_t *s, const void *_data, size_t len)
{
    const uint8_t *data = _data;
    for (; len != 0; --len) {
        ++s->byteCount;
        _picohash_sha1_add_uncounted(s, *data++);
    }
}
