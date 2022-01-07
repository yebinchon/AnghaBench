
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {scalar_t__ argv; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int argv_array_clear (struct argv_array*) ;
 int errno ;
 int prepare_git_cmd (struct argv_array*,char const**) ;
 int sane_execvp (char*,char**) ;
 int strerror (int ) ;
 int trace_argv_printf (scalar_t__,char*) ;
 int trace_printf (char*,int ) ;

int execv_git_cmd(const char **argv)
{
 struct argv_array nargv = ARGV_ARRAY_INIT;

 prepare_git_cmd(&nargv, argv);
 trace_argv_printf(nargv.argv, "trace: exec:");


 sane_execvp("git", (char **)nargv.argv);

 trace_printf("trace: exec failed: %s\n", strerror(errno));

 argv_array_clear(&nargv);
 return -1;
}
