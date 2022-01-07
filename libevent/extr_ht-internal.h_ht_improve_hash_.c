
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned
ht_improve_hash_(unsigned h)
{


  h += ~(h << 9);
  h ^= ((h >> 14) | (h << 18));
  h += (h << 4);
  h ^= ((h >> 10) | (h << 22));
  return h;
}
