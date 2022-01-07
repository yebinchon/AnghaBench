
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stash_update_rules {int include_changed; int include_untracked; int include_ignored; } ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_6__ {int path; } ;
struct TYPE_5__ {char* path; int mode; } ;
struct TYPE_7__ {int status; TYPE_2__ old_file; TYPE_1__ new_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_diff ;







 int GIT_ERROR_INVALID ;
 int GIT_FILEMODE_TREE ;
 TYPE_3__* git_diff_get_delta (int const*,size_t) ;
 size_t git_diff_num_deltas (int const*) ;
 int git_error_set (int ,char*,int) ;
 int git_index_find (int *,int *,int ) ;
 int git_index_remove (int *,int ,int ) ;
 int stash_to_index (int *,int *,char const*) ;

__attribute__((used)) static int stash_update_index_from_diff(
 git_repository *repo,
 git_index *index,
 const git_diff *diff,
 struct stash_update_rules *data)
{
 int error = 0;
 size_t d, max_d = git_diff_num_deltas(diff);

 for (d = 0; !error && d < max_d; ++d) {
  const char *add_path = ((void*)0);
  const git_diff_delta *delta = git_diff_get_delta(diff, d);

  switch (delta->status) {
  case 130:
   if (data->include_ignored)
    add_path = delta->new_file.path;
   break;

  case 128:
   if (data->include_untracked &&
    delta->new_file.mode != GIT_FILEMODE_TREE)
    add_path = delta->new_file.path;
   break;

  case 132:
  case 129:
   if (data->include_changed)
    add_path = delta->new_file.path;
   break;

  case 131:
   if (data->include_changed &&
    !git_index_find(((void*)0), index, delta->old_file.path))
    error = git_index_remove(index, delta->old_file.path, 0);
   break;

  default:

   git_error_set(
    GIT_ERROR_INVALID,
    "cannot update index. Unimplemented status (%d)",
    delta->status);
   return -1;
  }

  if (add_path != ((void*)0))
   error = stash_to_index(repo, index, add_path);
 }

 return error;
}
