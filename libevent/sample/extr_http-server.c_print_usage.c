
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static void
print_usage(FILE *out, const char *prog, int exit_code)
{
 fprintf(out,
  "Syntax: %s [ OPTS ] <docroot>\n"
  " -p      - port\n"
  " -U      - bind to unix socket\n"
  " -u      - unlink unix socket before bind\n"
  " -I      - IOCP\n"
  " -v      - verbosity, enables libevent debug logging too\n", prog);
 exit(exit_code);
}
