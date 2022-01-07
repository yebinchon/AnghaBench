
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr_t ;


 int JIT_CACHE_SIZE ;

__attribute__((used)) static inline size_t jit_cache_hash(addr_t ip) {
    return (ip ^ (ip >> 12)) % JIT_CACHE_SIZE;
}
