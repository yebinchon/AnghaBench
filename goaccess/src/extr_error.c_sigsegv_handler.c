
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* ERR_PLEASE_REPORT ;
 int EXIT_FAILURE ;
 char* GO_VERSION ;
 int TRACE_SIZE ;
 size_t backtrace (void**,int) ;
 char** backtrace_symbols (void**,size_t) ;
 int dump_struct (int *) ;
 int endwin () ;
 int exit (int ) ;
 int fprintf (int *,char*,...) ;
 int getpid () ;
 int * stderr ;

void
sigsegv_handler (int sig)
{
  FILE *fp = stderr;
  int pid = getpid ();







  (void) endwin ();
  fprintf (fp, "\n");
  fprintf (fp, "==%d== GoAccess %s crashed by Sig %d\n", pid, GO_VERSION, sig);
  fprintf (fp, "==%d==\n", pid);

  dump_struct (fp);
  fprintf (fp, "==%d==\n", pid);
  fprintf (fp, "==%d== %s:\n", pid, ERR_PLEASE_REPORT);
  fprintf (fp, "==%d== https://github.com/allinurl/goaccess/issues\n\n", pid);
  exit (EXIT_FAILURE);
}
