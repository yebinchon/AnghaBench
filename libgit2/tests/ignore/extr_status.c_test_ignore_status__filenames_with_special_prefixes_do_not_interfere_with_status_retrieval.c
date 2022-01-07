
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; scalar_t__ status; } ;
typedef TYPE_1__ status_entry_single ;
typedef int st ;
typedef int git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 scalar_t__ GIT_STATUS_WT_NEW ;
 int cb_status__single ;
 int cl_assert (int) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,char*,char*) ;
 int git_status_file (scalar_t__*,int *,char*) ;
 int git_status_foreach (int *,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void test_ignore_status__filenames_with_special_prefixes_do_not_interfere_with_status_retrieval(void)
{
 status_entry_single st;
 char *test_cases[] = {
  "!file",
  "#blah",
  "[blah]",
  "[attr]",
  "[attr]blah",
  ((void*)0)
 };
 int i;

 for (i = 0; *(test_cases + i) != ((void*)0); i++) {
  git_buf file = GIT_BUF_INIT;
  char *file_name = *(test_cases + i);
  git_repository *repo = cl_git_sandbox_init("empty_standard_repo");

  cl_git_pass(git_buf_joinpath(&file, "empty_standard_repo", file_name));
  cl_git_mkfile(git_buf_cstr(&file), "Please don't ignore me!");

  memset(&st, 0, sizeof(st));
  cl_git_pass(git_status_foreach(repo, cb_status__single, &st));
  cl_assert(st.count == 1);
  cl_assert(st.status == GIT_STATUS_WT_NEW);

  cl_git_pass(git_status_file(&st.status, repo, file_name));
  cl_assert(st.status == GIT_STATUS_WT_NEW);

  cl_git_sandbox_cleanup();
  git_buf_dispose(&file);
 }
}
