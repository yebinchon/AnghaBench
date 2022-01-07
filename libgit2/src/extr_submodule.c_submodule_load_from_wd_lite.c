
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int path; int repo; } ;
typedef TYPE_1__ git_submodule ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 int DOT_GIT ;
 TYPE_2__ GIT_BUF_INIT ;
 int GIT_SUBMODULE_STATUS_IN_WD ;
 int GIT_SUBMODULE_STATUS__WD_SCANNED ;
 int git_buf_dispose (TYPE_2__*) ;
 scalar_t__ git_buf_joinpath (TYPE_2__*,int ,int ) ;
 scalar_t__ git_path_contains (TYPE_2__*,int ) ;
 scalar_t__ git_path_isdir (int ) ;
 int git_repository_workdir (int ) ;

__attribute__((used)) static int submodule_load_from_wd_lite(git_submodule *sm)
{
 git_buf path = GIT_BUF_INIT;

 if (git_buf_joinpath(&path, git_repository_workdir(sm->repo), sm->path) < 0)
  return -1;

 if (git_path_isdir(path.ptr))
  sm->flags |= GIT_SUBMODULE_STATUS__WD_SCANNED;

 if (git_path_contains(&path, DOT_GIT))
  sm->flags |= GIT_SUBMODULE_STATUS_IN_WD;

 git_buf_dispose(&path);
 return 0;
}
