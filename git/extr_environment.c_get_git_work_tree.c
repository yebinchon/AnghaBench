
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* worktree; } ;


 TYPE_1__* the_repository ;

const char *get_git_work_tree(void)
{
 return the_repository->worktree;
}
