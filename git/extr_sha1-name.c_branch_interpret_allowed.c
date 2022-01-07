
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int INTERPRET_BRANCH_LOCAL ;
 unsigned int INTERPRET_BRANCH_REMOTE ;
 scalar_t__ starts_with (char const*,char*) ;

__attribute__((used)) static int branch_interpret_allowed(const char *refname, unsigned allowed)
{
 if (!allowed)
  return 1;

 if ((allowed & INTERPRET_BRANCH_LOCAL) &&
     starts_with(refname, "refs/heads/"))
  return 1;
 if ((allowed & INTERPRET_BRANCH_REMOTE) &&
     starts_with(refname, "refs/remotes/"))
  return 1;

 return 0;
}
