
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int not_a_local_branch(const char *reference_name)
{
 git_error_set(
  GIT_ERROR_INVALID,
  "reference '%s' is not a local branch.", reference_name);
 return -1;
}
