
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t git_repository_item_t ;
typedef int git_repository ;
typedef int git_buf ;
struct TYPE_2__ {scalar_t__ directory; scalar_t__ name; int fallback; int parent; } ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 scalar_t__ git_buf_joinpath (int *,char const*,scalar_t__) ;
 scalar_t__ git_buf_sets (int *,char const*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_path_to_dir (int *) ;
 TYPE_1__* items ;
 char* resolved_parent_path (int const*,int ,int ) ;

int git_repository_item_path(git_buf *out, const git_repository *repo, git_repository_item_t item)
{
 const char *parent = resolved_parent_path(repo, items[item].parent, items[item].fallback);
 if (parent == ((void*)0)) {
  git_error_set(GIT_ERROR_INVALID, "path cannot exist in repository");
  return GIT_ENOTFOUND;
 }

 if (git_buf_sets(out, parent) < 0)
  return -1;

 if (items[item].name) {
  if (git_buf_joinpath(out, parent, items[item].name) < 0)
   return -1;
 }

 if (items[item].directory) {
  if (git_path_to_dir(out) < 0)
   return -1;
 }

 return 0;
}
