
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int expect_advance_into (int *,char*) ;
 int g_repo ;
 int git_iterator_advance (int *,int *) ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int p_mkdir (char*,int) ;

void test_iterator_workdir__advance_into(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;

 g_repo = cl_git_sandbox_init("icase");

 i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
  GIT_ITERATOR_DONT_AUTOEXPAND;

 cl_must_pass(p_mkdir("icase/Empty", 0777));

 cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
 expect_advance_into(i, "B");
 expect_advance_into(i, "D");
 expect_advance_into(i, "Empty/");
 expect_advance_into(i, "F");
 expect_advance_into(i, "H");
 expect_advance_into(i, "J");
 expect_advance_into(i, "L/");
 expect_advance_into(i, "L/1");
 expect_advance_into(i, "L/B");
 expect_advance_into(i, "L/D");
 expect_advance_into(i, "L/a");
 expect_advance_into(i, "L/c");
 expect_advance_into(i, "a");
 expect_advance_into(i, "c");
 expect_advance_into(i, "e");
 expect_advance_into(i, "g");
 expect_advance_into(i, "i");
 expect_advance_into(i, "k/");
 expect_advance_into(i, "k/1");
 expect_advance_into(i, "k/B");
 expect_advance_into(i, "k/D");
 expect_advance_into(i, "k/a");
 expect_advance_into(i, "k/c");

 cl_git_fail_with(GIT_ITEROVER, git_iterator_advance(((void*)0), i));
 git_iterator_free(i);
}
