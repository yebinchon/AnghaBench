
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_iterator ;
struct TYPE_3__ {int path; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_ITEROVER ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_is_chmod_supported () ;
 int cl_must_pass (int ) ;
 int cl_skip () ;
 int g_repo ;
 scalar_t__ geteuid () ;
 int git_iterator_advance (TYPE_1__ const**,int *) ;
 int git_iterator_for_filesystem (int **,char*,int *) ;
 int git_iterator_free (int *) ;
 int p_chmod (char*,int) ;
 int p_mkdir (char*,int) ;

void test_iterator_workdir__skips_unreadable_dirs(void)
{
 git_iterator *i;
 const git_index_entry *e;

 if (!cl_is_chmod_supported())
  return;


 if (geteuid() == 0)
  cl_skip();


 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_must_pass(p_mkdir("empty_standard_repo/r", 0777));
 cl_git_mkfile("empty_standard_repo/r/a", "hello");
 cl_must_pass(p_mkdir("empty_standard_repo/r/b", 0777));
 cl_git_mkfile("empty_standard_repo/r/b/problem", "not me");
 cl_must_pass(p_chmod("empty_standard_repo/r/b", 0000));
 cl_must_pass(p_mkdir("empty_standard_repo/r/c", 0777));
 cl_git_mkfile("empty_standard_repo/r/c/foo", "aloha");
 cl_git_mkfile("empty_standard_repo/r/d", "final");

 cl_git_pass(git_iterator_for_filesystem(
  &i, "empty_standard_repo/r", ((void*)0)));

 cl_git_pass(git_iterator_advance(&e, i));
 cl_assert_equal_s("a", e->path);

 cl_git_pass(git_iterator_advance(&e, i));
 cl_assert_equal_s("c/foo", e->path);

 cl_git_pass(git_iterator_advance(&e, i));
 cl_assert_equal_s("d", e->path);

 cl_must_pass(p_chmod("empty_standard_repo/r/b", 0777));

 cl_assert_equal_i(GIT_ITEROVER, git_iterator_advance(&e, i));
 git_iterator_free(i);
}
