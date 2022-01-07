
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_regexp ;
typedef int git_object ;


 int GIT_ENOTFOUND ;
 scalar_t__ build_regex (int *,char*) ;
 int git_regexp_dispose (int *) ;
 int git_regexp_match (int *,char const*) ;
 int maybe_abbrev (int **,int *,char const*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int maybe_describe(git_object**out, git_repository *repo, const char *spec)
{
 const char *substr;
 int error;
 git_regexp regex;

 substr = strstr(spec, "-g");

 if (substr == ((void*)0))
  return GIT_ENOTFOUND;

 if (build_regex(&regex, ".+-[0-9]+-g[0-9a-fA-F]+") < 0)
  return -1;

 error = git_regexp_match(&regex, spec);
 git_regexp_dispose(&regex);

 if (error)
  return GIT_ENOTFOUND;

 return maybe_abbrev(out, repo, substr+2);
}
