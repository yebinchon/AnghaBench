
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int ce_namelen; int name; } ;


 int cache_name_stage_compare (int ,int ,int ,int ,int ,int ) ;
 int ce_stage (struct cache_entry const*) ;

__attribute__((used)) static int cmp_cache_name_compare(const void *a_, const void *b_)
{
 const struct cache_entry *ce1, *ce2;

 ce1 = *((const struct cache_entry **)a_);
 ce2 = *((const struct cache_entry **)b_);
 return cache_name_stage_compare(ce1->name, ce1->ce_namelen, ce_stage(ce1),
      ce2->name, ce2->ce_namelen, ce_stage(ce2));
}
