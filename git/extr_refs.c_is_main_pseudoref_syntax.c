
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_pseudoref_syntax (char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static int is_main_pseudoref_syntax(const char *refname)
{
 return skip_prefix(refname, "main-worktree/", &refname) &&
  *refname &&
  is_pseudoref_syntax(refname);
}
