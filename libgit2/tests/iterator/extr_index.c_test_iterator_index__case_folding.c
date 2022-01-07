
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int ARRAY_SIZE (int ) ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 int GIT_ITERATOR_IGNORE_CASE ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int expected_index_ci ;
 int expected_index_cs ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_path_exists (int ) ;
 int index_iterator_test (char*,int *,int *,int ,int ,int ,int *) ;

void test_iterator_index__case_folding(void)
{
 git_buf path = GIT_BUF_INIT;
 int fs_is_ci = 0;

 cl_git_pass(git_buf_joinpath(&path, cl_fixture("icase"), ".gitted/CoNfIg"));
 fs_is_ci = git_path_exists(path.ptr);
 git_buf_dispose(&path);

 index_iterator_test(
  "icase", ((void*)0), ((void*)0), 0, ARRAY_SIZE(expected_index_cs),
  fs_is_ci ? expected_index_ci : expected_index_cs, ((void*)0));

 cl_git_sandbox_cleanup();

 index_iterator_test(
  "icase", ((void*)0), ((void*)0), GIT_ITERATOR_IGNORE_CASE,
  ARRAY_SIZE(expected_index_ci), expected_index_ci, ((void*)0));

 cl_git_sandbox_cleanup();

 index_iterator_test(
  "icase", ((void*)0), ((void*)0), GIT_ITERATOR_DONT_IGNORE_CASE,
  ARRAY_SIZE(expected_index_cs), expected_index_cs, ((void*)0));
}
