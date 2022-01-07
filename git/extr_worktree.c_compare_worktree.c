
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int path; } ;


 int fspathcmp (int ,int ) ;

__attribute__((used)) static int compare_worktree(const void *a_, const void *b_)
{
 const struct worktree *const *a = a_;
 const struct worktree *const *b = b_;
 return fspathcmp((*a)->path, (*b)->path);
}
