
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; int path; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_buf ;
typedef int checkout_data ;


 int DOT_GIT ;
 scalar_t__ GIT_FILEMODE_TREE ;
 scalar_t__ checkout_target_fullpath (int **,int *,int ) ;
 int git_path_contains (int *,int ) ;

__attribute__((used)) static bool wd_item_is_removable(
 checkout_data *data, const git_index_entry *wd)
{
 git_buf *full;

 if (wd->mode != GIT_FILEMODE_TREE)
  return 1;

 if (checkout_target_fullpath(&full, data, wd->path) < 0)
  return 0;

 return !full || !git_path_contains(full, DOT_GIT);
}
