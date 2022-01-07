
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int rebase_is_blocked () ;

void test_rebase_setup__blocked_for_unstaged_change(void)
{
 cl_git_rewritefile("rebase/asparagus.txt", "Unstaged change");
 cl_git_fail(rebase_is_blocked());
}
