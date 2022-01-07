
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_index ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EUNMERGED ;
 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_SOFT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_index_free (int *) ;
 int git_index_has_conflicts (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int *,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_repository_path (int ) ;
 int git_reset (int ,int ,int ,int *) ;
 int p_unlink (int ) ;
 int repo ;
 int target ;

void test_reset_soft__fails_when_index_contains_conflicts_independently_of_MERGE_HEAD_file_existence(void)
{
 git_index *index;
 git_reference *head;
 git_buf merge_head_path = GIT_BUF_INIT;

 cl_git_sandbox_cleanup();

 repo = cl_git_sandbox_init("mergedrepo");

 cl_git_pass(git_buf_joinpath(&merge_head_path, git_repository_path(repo), "MERGE_HEAD"));
 cl_git_pass(p_unlink(git_buf_cstr(&merge_head_path)));
 git_buf_dispose(&merge_head_path);

 cl_git_pass(git_repository_index(&index, repo));
 cl_assert_equal_i(1, git_index_has_conflicts(index));
 git_index_free(index);

 cl_git_pass(git_repository_head(&head, repo));
 cl_git_pass(git_reference_peel(&target, head, GIT_OBJECT_COMMIT));
 git_reference_free(head);

 cl_assert_equal_i(GIT_EUNMERGED, git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));
}
