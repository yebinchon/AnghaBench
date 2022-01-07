
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wrong_sorted_path; int wrong_status_flags_count; int entry_count; int expected_entry_count; int expected_statuses; int expected_paths; } ;
typedef TYPE_1__ status_entry_counts ;
typedef int git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cb_status__normal ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int entry_count2 ;
 int entry_paths2 ;
 int entry_statuses2 ;
 int git_buf_dispose (int *) ;
 int git_buf_sets (int *,int ) ;
 int git_path_direach (int *,int ,int ,int *) ;
 int git_repository_workdir (int *) ;
 int git_status_foreach (int *,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;
 int remove_file_cb ;

void test_status_worktree__purged_worktree(void)
{
 status_entry_counts counts;
 git_repository *repo = cl_git_sandbox_init("status");
 git_buf workdir = GIT_BUF_INIT;


 cl_git_pass(git_buf_sets(&workdir, git_repository_workdir(repo)));
 cl_git_pass(git_path_direach(&workdir, 0, remove_file_cb, ((void*)0)));
 git_buf_dispose(&workdir);


 memset(&counts, 0x0, sizeof(status_entry_counts));
 counts.expected_entry_count = entry_count2;
 counts.expected_paths = entry_paths2;
 counts.expected_statuses = entry_statuses2;

 cl_git_pass(
  git_status_foreach(repo, cb_status__normal, &counts)
 );

 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);
}
