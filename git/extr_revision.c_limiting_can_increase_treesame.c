
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int first_parent_only; int simplify_history; scalar_t__ dense; scalar_t__ prune; } ;



__attribute__((used)) static inline int limiting_can_increase_treesame(const struct rev_info *revs)
{
 return revs->prune && revs->dense &&
        !revs->simplify_history &&
        !revs->first_parent_only;
}
