
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int file_path_buf ;
 int git_buf_dispose (int *) ;
 int git_remote_free (int *) ;
 int git_repository_free (int *) ;
 int * remote ;
 int * repo ;

void test_network_remote_local__cleanup(void)
{
 git_buf_dispose(&file_path_buf);

 git_remote_free(remote);
 remote = ((void*)0);

 git_repository_free(repo);
 repo = ((void*)0);

 cl_fixture_cleanup("remotelocal");
}
