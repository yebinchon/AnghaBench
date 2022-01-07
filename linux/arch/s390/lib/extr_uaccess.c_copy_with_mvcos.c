
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int have_mvcos ;
 scalar_t__ static_branch_likely (int *) ;

__attribute__((used)) static inline int copy_with_mvcos(void)
{
 if (static_branch_likely(&have_mvcos))
  return 1;
 return 0;
}
