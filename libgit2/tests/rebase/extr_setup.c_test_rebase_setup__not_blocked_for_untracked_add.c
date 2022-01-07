
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int rebase_is_blocked () ;

void test_rebase_setup__not_blocked_for_untracked_add(void)
{
 cl_git_rewritefile("rebase/newfile.txt", "Untracked file");
 cl_git_pass(rebase_is_blocked());
}
