
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int GIT_DIRECTION_FETCH ;
 int cl_assert (int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_path_url (int ) ;
 int file_path_buf ;
 int git_buf_cstr (int *) ;
 int git_buf_sets (int *,int ) ;
 int git_remote_connect (int *,int ,int *,int *,int *) ;
 int git_remote_connected (int *) ;
 int git_remote_create_anonymous (int **,int *,int ) ;
 int git_remote_disconnect (int *) ;
 int git_remote_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_new (int **) ;

void test_network_remote_local__anonymous_remote_inmemory_repo(void)
{
 git_repository *inmemory;
 git_remote *remote;

 git_buf_sets(&file_path_buf, cl_git_path_url(cl_fixture("testrepo.git")));

 cl_git_pass(git_repository_new(&inmemory));
 cl_git_pass(git_remote_create_anonymous(&remote, inmemory, git_buf_cstr(&file_path_buf)));
 cl_git_pass(git_remote_connect(remote, GIT_DIRECTION_FETCH, ((void*)0), ((void*)0), ((void*)0)));
 cl_assert(git_remote_connected(remote));
 git_remote_disconnect(remote);
 git_remote_free(remote);
 git_repository_free(inmemory);
}
