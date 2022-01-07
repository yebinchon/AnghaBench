
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int has_changes; } ;
struct diff_options {TYPE_1__ flags; } ;


 int REV_TREE_DIFFERENT ;
 int tree_difference ;

__attribute__((used)) static void file_change(struct diff_options *options,
   unsigned old_mode, unsigned new_mode,
   const struct object_id *old_oid,
   const struct object_id *new_oid,
   int old_oid_valid, int new_oid_valid,
   const char *fullpath,
   unsigned old_dirty_submodule, unsigned new_dirty_submodule)
{
 tree_difference = REV_TREE_DIFFERENT;
 options->flags.has_changes = 1;
}
