
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int remove_empty_trees; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int has_changes; } ;
struct diff_options {TYPE_1__ flags; struct rev_info* change_fn_data; } ;


 int REV_TREE_NEW ;
 int REV_TREE_OLD ;
 int tree_difference ;

__attribute__((used)) static void file_add_remove(struct diff_options *options,
      int addremove, unsigned mode,
      const struct object_id *oid,
      int oid_valid,
      const char *fullpath, unsigned dirty_submodule)
{
 int diff = addremove == '+' ? REV_TREE_NEW : REV_TREE_OLD;
 struct rev_info *revs = options->change_fn_data;

 tree_difference |= diff;
 if (!revs->remove_empty_trees || tree_difference != REV_TREE_NEW)
  options->flags.has_changes = 1;
}
