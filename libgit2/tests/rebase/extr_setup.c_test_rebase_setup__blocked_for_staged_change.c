
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _index ;
 int cl_git_fail (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int git_index_add_bypath (int ,char*) ;
 int rebase_is_blocked () ;

void test_rebase_setup__blocked_for_staged_change(void)
{
 cl_git_rewritefile("rebase/newfile.txt", "Stage an add");
 git_index_add_bypath(_index, "newfile.txt");
 cl_git_fail(rebase_is_blocked());
}
