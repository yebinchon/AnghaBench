
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;


 int GIT_ENOTFOUND ;
 int _repo ;
 int cl_git_fail_with (int ,int ) ;
 int git_remote_lookup (int **,int ,char*) ;

void test_network_remote_remotes__returns_ENOTFOUND_when_neither_url_nor_pushurl(void)
{
 git_remote *remote = ((void*)0);

 cl_git_fail_with(
  git_remote_lookup(&remote, _repo, "no-remote-url"), GIT_ENOTFOUND);
}
