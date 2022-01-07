
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH_BITS ;
 int __build_heap_multiplier ;

__attribute__((used)) static inline unsigned calc_domain_hash (int domain) {
  unsigned mval = domain * __build_heap_multiplier;
  return mval >> (32 - HASH_BITS);
}
