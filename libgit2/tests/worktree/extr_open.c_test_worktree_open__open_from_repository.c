
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int locked; int commondir_path; int parent_path; int gitlink_path; int gitdir_path; int name; } ;
typedef TYPE_1__ git_worktree ;
struct TYPE_7__ {int repo; int worktree; } ;


 int WORKTREE_REPO ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 TYPE_5__ fixture ;
 int git_worktree_free (TYPE_1__*) ;
 int git_worktree_lookup (TYPE_1__**,int ,int ) ;
 int git_worktree_open_from_repository (TYPE_1__**,int ) ;

void test_worktree_open__open_from_repository(void)
{
 git_worktree *opened, *lookedup;

 cl_git_pass(git_worktree_open_from_repository(&opened, fixture.worktree));
 cl_git_pass(git_worktree_lookup(&lookedup, fixture.repo, WORKTREE_REPO));

 cl_assert_equal_s(opened->name, lookedup->name);
 cl_assert_equal_s(opened->gitdir_path, lookedup->gitdir_path);
 cl_assert_equal_s(opened->gitlink_path, lookedup->gitlink_path);
 cl_assert_equal_s(opened->parent_path, lookedup->parent_path);
 cl_assert_equal_s(opened->commondir_path, lookedup->commondir_path);
 cl_assert_equal_i(opened->locked, lookedup->locked);

 git_worktree_free(opened);
 git_worktree_free(lookedup);
}
