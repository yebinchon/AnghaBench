
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int is_per_worktree_ref(const char *refname)
{
 return !strcmp(refname, "HEAD") ||
  starts_with(refname, "refs/worktree/") ||
  starts_with(refname, "refs/bisect/") ||
  starts_with(refname, "refs/rewritten/");
}
