
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; int count; } ;
typedef TYPE_1__ status_entry_single ;
typedef int result ;
typedef int git_repository ;
typedef int git_index ;


 scalar_t__ GIT_STATUS_INDEX_NEW ;
 scalar_t__ GIT_STATUS_WT_NEW ;
 int cb_status__single ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_new_repo ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int git_status_foreach (int *,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void test_status_worktree_init__first_commit_in_progress(void)
{
 git_repository *repo;
 git_index *index;
 status_entry_single result;

 cl_set_cleanup(&cleanup_new_repo, "getting_started");

 cl_git_pass(git_repository_init(&repo, "getting_started", 0));
 cl_git_mkfile("getting_started/testfile.txt", "content\n");

 memset(&result, 0, sizeof(result));
 cl_git_pass(git_status_foreach(repo, cb_status__single, &result));
 cl_assert_equal_i(1, result.count);
 cl_assert(result.status == GIT_STATUS_WT_NEW);

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_add_bypath(index, "testfile.txt"));
 cl_git_pass(git_index_write(index));

 memset(&result, 0, sizeof(result));
 cl_git_pass(git_status_foreach(repo, cb_status__single, &result));
 cl_assert_equal_i(1, result.count);
 cl_assert(result.status == GIT_STATUS_INDEX_NEW);

 git_index_free(index);
 git_repository_free(repo);
}
