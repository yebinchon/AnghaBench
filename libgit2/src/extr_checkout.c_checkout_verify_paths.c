
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_5__ {int path; int mode; } ;
struct TYPE_6__ {int path; int mode; } ;
struct TYPE_7__ {TYPE_1__ new_file; TYPE_2__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;


 int CHECKOUT_ACTION__REMOVE ;
 int GIT_ERROR_CHECKOUT ;
 unsigned int GIT_PATH_REJECT_WORKDIR_DEFAULTS ;
 int git_error_set (int ,char*,int ) ;
 int git_path_isvalid (int *,int ,int ,unsigned int) ;

__attribute__((used)) static int checkout_verify_paths(
 git_repository *repo,
 int action,
 git_diff_delta *delta)
{
 unsigned int flags = GIT_PATH_REJECT_WORKDIR_DEFAULTS;

 if (action & CHECKOUT_ACTION__REMOVE) {
  if (!git_path_isvalid(repo, delta->old_file.path, delta->old_file.mode, flags)) {
   git_error_set(GIT_ERROR_CHECKOUT, "cannot remove invalid path '%s'", delta->old_file.path);
   return -1;
  }
 }

 if (action & ~CHECKOUT_ACTION__REMOVE) {
  if (!git_path_isvalid(repo, delta->new_file.path, delta->new_file.mode, flags)) {
   git_error_set(GIT_ERROR_CHECKOUT, "cannot checkout to invalid path '%s'", delta->new_file.path);
   return -1;
  }
 }

 return 0;
}
