
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child ;
 int cl_git_pass (int ) ;
 int p_rename (char*,char*) ;
 int parent ;
 int setup_fixture_worktree (int *) ;

void test_worktree_submodule__initialize(void)
{
 setup_fixture_worktree(&parent);

 cl_git_pass(p_rename(
  "submodules/testrepo/.gitted",
  "submodules/testrepo/.git"));

 setup_fixture_worktree(&child);
}
