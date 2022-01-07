
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execv_git_cmd (char const**) ;

__attribute__((used)) static int ut_005exec(int argc, const char **argv)
{
 int result;

 if (!argc)
  return 0;

 result = execv_git_cmd(argv);
 return result;
}
