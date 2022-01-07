
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 int execv_git_cmd (char const**) ;
 int setup_path () ;
 char* sq_dequote (char*) ;
 int starts_with (char const*,char*) ;

__attribute__((used)) static int do_generic_cmd(const char *me, char *arg)
{
 const char *my_argv[4];

 setup_path();
 if (!arg || !(arg = sq_dequote(arg)) || *arg == '-')
  die("bad argument");
 if (!starts_with(me, "git-"))
  die("bad command");

 my_argv[0] = me + 4;
 my_argv[1] = arg;
 my_argv[2] = ((void*)0);

 return execv_git_cmd(my_argv);
}
