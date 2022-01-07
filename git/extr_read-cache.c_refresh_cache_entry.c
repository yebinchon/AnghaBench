
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct cache_entry {int dummy; } ;


 struct cache_entry* refresh_cache_ent (struct index_state*,struct cache_entry*,unsigned int,int *,int *) ;

struct cache_entry *refresh_cache_entry(struct index_state *istate,
     struct cache_entry *ce,
     unsigned int options)
{
 return refresh_cache_ent(istate, ce, options, ((void*)0), ((void*)0));
}
