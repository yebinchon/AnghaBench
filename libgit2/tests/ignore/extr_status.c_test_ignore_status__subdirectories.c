
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; int count; } ;
typedef TYPE_1__ status_entry_single ;
typedef int st ;


 scalar_t__ GIT_STATUS_IGNORED ;
 int assert_is_ignored (char*) ;
 int cb_status__single ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_futils_mkdir_r (char*,int) ;
 int git_status_file (scalar_t__*,int ,char*) ;
 int git_status_foreach (int ,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void test_ignore_status__subdirectories(void)
{
 status_entry_single st;

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_mkfile(
  "empty_standard_repo/ignore_me", "I'm going to be ignored!");

 cl_git_rewritefile("empty_standard_repo/.gitignore", "ignore_me\n");

 memset(&st, 0, sizeof(st));
 cl_git_pass(git_status_foreach(g_repo, cb_status__single, &st));
 cl_assert_equal_i(2, st.count);
 cl_assert(st.status == GIT_STATUS_IGNORED);

 cl_git_pass(git_status_file(&st.status, g_repo, "ignore_me"));
 cl_assert(st.status == GIT_STATUS_IGNORED);

 assert_is_ignored("ignore_me");
 cl_git_pass(git_futils_mkdir_r(
  "empty_standard_repo/test/ignore_me", 0775));
 cl_git_mkfile(
  "empty_standard_repo/test/ignore_me/file", "I'm going to be ignored!");
 cl_git_mkfile(
  "empty_standard_repo/test/ignore_me/file2", "Me, too!");

 memset(&st, 0, sizeof(st));
 cl_git_pass(git_status_foreach(g_repo, cb_status__single, &st));
 cl_assert_equal_i(3, st.count);

 cl_git_pass(git_status_file(&st.status, g_repo, "test/ignore_me/file"));
 cl_assert(st.status == GIT_STATUS_IGNORED);

 assert_is_ignored("test/ignore_me/file");
}
