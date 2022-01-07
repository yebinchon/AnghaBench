
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_error_clear () ;
 scalar_t__ git_reference__normalize_name (int *,char const*,unsigned int) ;

int git_reference__is_valid_name(const char *refname, unsigned int flags)
{
 if (git_reference__normalize_name(((void*)0), refname, flags) < 0) {
  git_error_clear();
  return 0;
 }

 return 1;
}
