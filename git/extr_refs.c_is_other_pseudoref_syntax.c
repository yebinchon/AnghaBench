
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_pseudoref_syntax (char const*) ;
 int skip_prefix (char const*,char*,char const**) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int is_other_pseudoref_syntax(const char *refname)
{
 if (!skip_prefix(refname, "worktrees/", &refname))
  return 0;
 refname = strchr(refname, '/');
 if (!refname || !refname[1])
  return 0;
 return is_pseudoref_syntax(refname + 1);
}
