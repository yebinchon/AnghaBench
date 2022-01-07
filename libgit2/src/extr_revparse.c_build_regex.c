
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_regexp ;


 int GIT_EINVALIDSPEC ;
 int GIT_ERROR_REGEX ;
 int git_error_set (int ,char*) ;
 int git_regexp_compile (int *,char const*,int ) ;
 int git_regexp_dispose (int *) ;

__attribute__((used)) static int build_regex(git_regexp *regex, const char *pattern)
{
 int error;

 if (*pattern == '\0') {
  git_error_set(GIT_ERROR_REGEX, "empty pattern");
  return GIT_EINVALIDSPEC;
 }

 error = git_regexp_compile(regex, pattern, 0);
 if (!error)
  return 0;

 git_regexp_dispose(regex);

 return error;
}
