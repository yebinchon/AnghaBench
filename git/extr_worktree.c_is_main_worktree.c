
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; } ;



int is_main_worktree(const struct worktree *wt)
{
 return !wt->id;
}
