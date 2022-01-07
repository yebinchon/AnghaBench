
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int diffopt; } ;
struct object_id {int dummy; } ;
struct cache_entry {int name; } ;


 int diff_addremove (int *,char const,unsigned int,struct object_id const*,int,int ,unsigned int) ;

__attribute__((used)) static void diff_index_show_file(struct rev_info *revs,
     const char *prefix,
     const struct cache_entry *ce,
     const struct object_id *oid, int oid_valid,
     unsigned int mode,
     unsigned dirty_submodule)
{
 diff_addremove(&revs->diffopt, prefix[0], mode,
         oid, oid_valid, ce->name, dirty_submodule);
}
