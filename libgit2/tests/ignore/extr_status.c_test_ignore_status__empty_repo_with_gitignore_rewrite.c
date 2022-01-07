
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; scalar_t__ status; } ;
typedef TYPE_1__ status_entry_single ;
typedef int st ;


 scalar_t__ GIT_STATUS_IGNORED ;
 scalar_t__ GIT_STATUS_WT_NEW ;
 int assert_is_ignored (char*) ;
 int cb_status__single ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_status_file (scalar_t__*,int ,char*) ;
 int git_status_foreach (int ,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__empty_repo_with_gitignore_rewrite(void)
{
 status_entry_single st;

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_mkfile(
  "empty_standard_repo/look-ma.txt", "I'm going to be ignored!");

 memset(&st, 0, sizeof(st));
 cl_git_pass(git_status_foreach(g_repo, cb_status__single, &st));
 cl_assert(st.count == 1);
 cl_assert(st.status == GIT_STATUS_WT_NEW);

 cl_git_pass(git_status_file(&st.status, g_repo, "look-ma.txt"));
 cl_assert(st.status == GIT_STATUS_WT_NEW);

 refute_is_ignored("look-ma.txt");

 cl_git_rewritefile("empty_standard_repo/.gitignore", "*.nomatch\n");

 memset(&st, 0, sizeof(st));
 cl_git_pass(git_status_foreach(g_repo, cb_status__single, &st));
 cl_assert(st.count == 2);
 cl_assert(st.status == GIT_STATUS_WT_NEW);

 cl_git_pass(git_status_file(&st.status, g_repo, "look-ma.txt"));
 cl_assert(st.status == GIT_STATUS_WT_NEW);

 refute_is_ignored("look-ma.txt");

 cl_git_rewritefile("empty_standard_repo/.gitignore", "*.txt\n");

 memset(&st, 0, sizeof(st));
 cl_git_pass(git_status_foreach(g_repo, cb_status__single, &st));
 cl_assert(st.count == 2);
 cl_assert(st.status == GIT_STATUS_IGNORED);

 cl_git_pass(git_status_file(&st.status, g_repo, "look-ma.txt"));
 cl_assert(st.status == GIT_STATUS_IGNORED);

 assert_is_ignored("look-ma.txt");
}
