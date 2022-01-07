
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int diffopt; } ;
struct object_id {int dummy; } ;
struct cache_entry {int dummy; } ;


 int diff_index_show_file (struct rev_info*,char*,struct cache_entry const*,struct object_id const*,int,unsigned int,unsigned int) ;
 scalar_t__ get_stat_data (struct cache_entry const*,struct object_id const**,unsigned int*,int,int,unsigned int*,int *) ;
 int is_null_oid (struct object_id const*) ;

__attribute__((used)) static void show_new_file(struct rev_info *revs,
     const struct cache_entry *new_file,
     int cached, int match_missing)
{
 const struct object_id *oid;
 unsigned int mode;
 unsigned dirty_submodule = 0;





 if (get_stat_data(new_file, &oid, &mode, cached, match_missing,
     &dirty_submodule, &revs->diffopt) < 0)
  return;

 diff_index_show_file(revs, "+", new_file, oid, !is_null_oid(oid), mode, dirty_submodule);
}
