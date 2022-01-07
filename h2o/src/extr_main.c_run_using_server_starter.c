
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_CONFIG ;
 char** build_server_starter_argv (char const*,char const*) ;
 int errno ;
 int execvp (char*,char**) ;
 int fprintf (int ,char*,char*,char*) ;
 int setenv (char*,char*,int) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int run_using_server_starter(const char *h2o_cmd, const char *config_file)
{
    char **args = build_server_starter_argv(h2o_cmd, config_file);
    setenv("H2O_VIA_MASTER", "", 1);
    execvp(args[0], args);
    fprintf(stderr, "failed to spawn %s:%s\n", args[0], strerror(errno));
    return EX_CONFIG;
}
