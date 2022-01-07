
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execvp (char const*,char**) ;
 int exit (int) ;
 int fflush (int ) ;
 int fork () ;
 int fprintf (int ,char*,char*,...) ;
 int perror (char const*) ;
 char* progname ;
 int stderr ;
 int stdout ;
 int wait (int*) ;

__attribute__((used)) static int spawn(const char *cmdname, char **argv) {
 int pid, n, status;

 switch (pid = fork()) {
 case -1:
  fprintf(stderr, "%s: no more processes\n", progname);
  return 100;
 case 0:

  execvp(cmdname, argv);
  fprintf(stderr, "%s: ", progname);
  perror(cmdname);
  fflush(stdout);
  exit(100);
 }
 while ((n = wait(&status)) != pid && n != -1)
  ;
 if (n == -1)
  status = -1;
 if (status&0377) {
  fprintf(stderr, "%s: fatal error in %s\n", progname, cmdname);
  status |= 0400;
 }
 return (status>>8)&0377;
}
