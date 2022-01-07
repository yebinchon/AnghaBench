
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int worktree; } ;


 int COMMON_REPO ;
 int WORKTREE_REPO ;
 int assert_worktree_valid (int ,int ,int ) ;
 TYPE_1__ fixture ;

void test_worktree_open__repository(void)
{
 assert_worktree_valid(fixture.worktree, COMMON_REPO, WORKTREE_REPO);
}
