
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct st_ptls_extension_bitmap_t {int* bits; } ;



__attribute__((used)) static inline void extension_bitmap_set(struct st_ptls_extension_bitmap_t *bitmap, uint16_t id)
{
    if (id < sizeof(bitmap->bits) * 8)
        bitmap->bits[id / 8] |= 1 << (id % 8);
}
