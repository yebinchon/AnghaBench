
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 char* GIT_REFLOG_DIR ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int current_master_tip ;
 int g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_oid_fromstr (int *,int ) ;
 int git_path_isfile (int ) ;
 int git_reference_create (int **,int ,char*,int *,int ,int *) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int git_repository_path (int ) ;

void test_refs_reflog_reflog__removes_empty_reflog_dir(void)
{
 git_reference *ref;
 git_buf log_path = GIT_BUF_INIT;
 git_oid id;


 git_oid_fromstr(&id, current_master_tip);
 cl_git_pass(git_reference_create(&ref, g_repo, "refs/heads/new-dir/new-head", &id, 0, ((void*)0)));

 git_buf_joinpath(&log_path, git_repository_path(g_repo), GIT_REFLOG_DIR);
 git_buf_joinpath(&log_path, git_buf_cstr(&log_path), "refs/heads/new-dir/new-head");

 cl_assert_equal_i(1, git_path_isfile(git_buf_cstr(&log_path)));

 cl_git_pass(git_reference_delete(ref));
 git_reference_free(ref);


 git_oid_fromstr(&id, current_master_tip);
 cl_git_pass(git_reference_create(&ref, g_repo, "refs/heads/new-dir", &id, 0, ((void*)0)));
 git_reference_free(ref);

 git_buf_dispose(&log_path);
}
