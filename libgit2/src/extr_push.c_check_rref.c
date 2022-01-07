
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INVALID ;
 scalar_t__ git__prefixcmp (char*,char*) ;
 int git_error_set (int ,char*,char*) ;

__attribute__((used)) static int check_rref(char *ref)
{
 if (git__prefixcmp(ref, "refs/")) {
  git_error_set(GIT_ERROR_INVALID, "not a valid reference '%s'", ref);
  return -1;
 }

 return 0;
}
