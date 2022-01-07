
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff ;


 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int diff_required(git_diff *diff, const char *action)
{
 if (diff)
  return 0;
 git_error_set(GIT_ERROR_INVALID, "must provide valid diff to %s", action);
 return -1;
}
