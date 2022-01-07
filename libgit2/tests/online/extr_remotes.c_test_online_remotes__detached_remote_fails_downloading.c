
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;


 int GIT_DIRECTION_FETCH ;
 int URL ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_remote_connect (int *,int ,int *,int *,int *) ;
 int git_remote_create_detached (int **,int ) ;
 int git_remote_download (int *,int *,int *) ;
 int git_remote_free (int *) ;

void test_online_remotes__detached_remote_fails_downloading(void)
{
 git_remote *remote;

 cl_git_pass(git_remote_create_detached(&remote, URL));
 cl_git_pass(git_remote_connect(remote, GIT_DIRECTION_FETCH, ((void*)0), ((void*)0), ((void*)0)));
 cl_git_fail(git_remote_download(remote, ((void*)0), ((void*)0)));

 git_remote_free(remote);
}
