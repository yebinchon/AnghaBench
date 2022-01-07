
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_path; scalar_t__ inmemory; } ;
typedef TYPE_1__ git_rebase ;


 int GIT_RMDIR_REMOVE_FILES ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 scalar_t__ git_path_isdir (int ) ;

__attribute__((used)) static int rebase_cleanup(git_rebase *rebase)
{
 if (!rebase || rebase->inmemory)
  return 0;

 return git_path_isdir(rebase->state_path) ?
  git_futils_rmdir_r(rebase->state_path, ((void*)0), GIT_RMDIR_REMOVE_FILES) :
  0;
}
