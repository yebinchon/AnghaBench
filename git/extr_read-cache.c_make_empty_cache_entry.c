
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct cache_entry {int dummy; } ;


 int find_mem_pool (struct index_state*) ;
 struct cache_entry* mem_pool__ce_calloc (int ,size_t) ;

struct cache_entry *make_empty_cache_entry(struct index_state *istate, size_t len)
{
 return mem_pool__ce_calloc(find_mem_pool(istate), len);
}
