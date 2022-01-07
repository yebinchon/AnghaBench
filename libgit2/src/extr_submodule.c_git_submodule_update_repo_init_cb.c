
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repo; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_repository ;


 int GIT_UNUSED (int) ;
 int submodule_repo_create (int **,int ,char const*) ;

__attribute__((used)) static int git_submodule_update_repo_init_cb(
 git_repository **out,
 const char *path,
 int bare,
 void *payload)
{
 git_submodule *sm;

 GIT_UNUSED(bare);

 sm = payload;

 return submodule_repo_create(out, sm->repo, path);
}
