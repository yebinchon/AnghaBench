
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int name; } ;


 int cache_name_stage_compare (char const*,int,int,int ,int ,int ) ;
 int ce_namelen (struct cache_entry*) ;
 int ce_stage (struct cache_entry*) ;

__attribute__((used)) static int index_name_stage_pos(const struct index_state *istate, const char *name, int namelen, int stage)
{
 int first, last;

 first = 0;
 last = istate->cache_nr;
 while (last > first) {
  int next = first + ((last - first) >> 1);
  struct cache_entry *ce = istate->cache[next];
  int cmp = cache_name_stage_compare(name, namelen, stage, ce->name, ce_namelen(ce), ce_stage(ce));
  if (!cmp)
   return next;
  if (cmp < 0) {
   last = next;
   continue;
  }
  first = next+1;
 }
 return -first-1;
}
