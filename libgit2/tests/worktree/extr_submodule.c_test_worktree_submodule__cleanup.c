
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child ;
 int cleanup_fixture_worktree (int *) ;
 int parent ;

void test_worktree_submodule__cleanup(void)
{
 cleanup_fixture_worktree(&child);
 cleanup_fixture_worktree(&parent);
}
