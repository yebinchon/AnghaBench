
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_pool {int dummy; } ;
struct cache_entry {int mem_pool_allocated; } ;


 int cache_entry_size (size_t) ;
 struct cache_entry* mem_pool_calloc (struct mem_pool*,int,int ) ;

__attribute__((used)) static inline struct cache_entry *mem_pool__ce_calloc(struct mem_pool *mem_pool, size_t len)
{
 struct cache_entry * ce;
 ce = mem_pool_calloc(mem_pool, 1, cache_entry_size(len));
 ce->mem_pool_allocated = 1;
 return ce;
}
