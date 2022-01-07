
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long HASH_META_PRIME ;

__attribute__((used)) static inline int get_meta_hash (long long volume_id, int local_id) {
  unsigned long long h = volume_id;
  h %= HASH_META_PRIME;
  h <<= 32;
  h |= local_id;
  return h % HASH_META_PRIME;
}
