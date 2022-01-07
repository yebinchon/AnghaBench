
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_CONFIG ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static int config_error_readonly(void)
{
 git_error_set(GIT_ERROR_CONFIG, "this backend is read-only");
 return -1;
}
