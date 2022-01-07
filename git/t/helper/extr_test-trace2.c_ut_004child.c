
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int run_command_v_opt (char const**,int ) ;

__attribute__((used)) static int ut_004child(int argc, const char **argv)
{
 int result;





 if (!argc)
  return 0;

 result = run_command_v_opt(argv, 0);
 exit(result);
}
