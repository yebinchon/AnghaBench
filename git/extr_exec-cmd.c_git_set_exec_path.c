
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_PATH_ENVIRONMENT ;
 char const* exec_path_value ;
 int setenv (int ,char const*,int) ;

void git_set_exec_path(const char *exec_path)
{
 exec_path_value = exec_path;



 setenv(EXEC_PATH_ENVIRONMENT, exec_path, 1);
}
