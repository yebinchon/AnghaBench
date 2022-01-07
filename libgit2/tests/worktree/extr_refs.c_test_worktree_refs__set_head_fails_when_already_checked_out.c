
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repo; } ;


 int cl_git_fail (int ) ;
 TYPE_1__ fixture ;
 int git_repository_set_head (int ,char*) ;

void test_worktree_refs__set_head_fails_when_already_checked_out(void)
{
 cl_git_fail(git_repository_set_head(fixture.repo, "refs/heads/testrepo-worktree"));
}
