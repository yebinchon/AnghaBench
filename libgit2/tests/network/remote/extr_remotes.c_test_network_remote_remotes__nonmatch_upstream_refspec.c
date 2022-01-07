
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** member_0; int member_1; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;
typedef int git_config ;


 int _repo ;
 int cl_git_pass (int ) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_remote_create (int **,int ,char*,int ) ;
 int git_remote_fetch (int *,TYPE_1__*,int *,int *) ;
 int git_remote_free (int *) ;
 int git_repository_config (int **,int ) ;
 int git_repository_path (int ) ;

void test_network_remote_remotes__nonmatch_upstream_refspec(void)
{
 git_config *config;
 git_remote *remote;
 char *specstr[] = {
  "refs/tags/*:refs/tags/*",
 };
 git_strarray specs = {
  specstr,
  1,
 };

 cl_git_pass(git_remote_create(&remote, _repo, "taggy", git_repository_path(_repo)));





 cl_git_pass(git_repository_config(&config, _repo));
 cl_git_pass(git_config_set_string(config, "branch.master.remote", "taggy"));
 cl_git_pass(git_config_set_string(config, "branch.master.merge", "refs/heads/foo"));

 cl_git_pass(git_remote_fetch(remote, &specs, ((void*)0), ((void*)0)));

 git_remote_free(remote);
}
