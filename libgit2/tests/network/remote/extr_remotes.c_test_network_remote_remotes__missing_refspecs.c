
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int * _remote ;
 int _repo ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_repository_config (int **,int ) ;

void test_network_remote_remotes__missing_refspecs(void)
{
 git_config *cfg;

 git_remote_free(_remote);
 _remote = ((void*)0);

 cl_git_pass(git_repository_config(&cfg, _repo));
 cl_git_pass(git_config_set_string(cfg, "remote.specless.url", "http://example.com"));
 cl_git_pass(git_remote_lookup(&_remote, _repo, "specless"));

 git_config_free(cfg);
}
