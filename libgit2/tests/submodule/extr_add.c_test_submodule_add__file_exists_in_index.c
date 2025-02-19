
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_index ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EEXISTS ;
 int GIT_FILEMODE_BLOB ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_buf_dispose (int *) ;
 int git_repository_index__weakptr (int **,int ) ;
 int git_submodule_add_setup (int **,int ,char*,char*,int) ;
 int git_submodule_free (int *) ;
 int test_add_entry (int *,int ,char*,int ) ;
 int valid_blob_id ;

void test_submodule_add__file_exists_in_index(void)
{
 git_index *index;
 git_submodule *sm;
 git_buf name = GIT_BUF_INIT;

 g_repo = cl_git_sandbox_init("testrepo");

 cl_git_pass(git_repository_index__weakptr(&index, g_repo));

 test_add_entry(index, valid_blob_id, "subdirectory", GIT_FILEMODE_BLOB);

 cl_git_fail_with(git_submodule_add_setup(&sm, g_repo, "./", "subdirectory", 1), GIT_EEXISTS);

 git_submodule_free(sm);
 git_buf_dispose(&name);
}
