
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_sysdir_t ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*) ;
 int git_sysdir__dirs ;

__attribute__((used)) static int git_sysdir_check_selector(git_sysdir_t which)
{
 if (which < ARRAY_SIZE(git_sysdir__dirs))
  return 0;

 git_error_set(GIT_ERROR_INVALID, "config directory selector out of range");
 return -1;
}
