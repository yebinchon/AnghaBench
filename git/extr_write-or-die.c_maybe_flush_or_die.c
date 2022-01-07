
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 scalar_t__ S_ISREG (int ) ;
 scalar_t__ atoi (char*) ;
 int check_pipe (int ) ;
 int die_errno (char*,char const*) ;
 int errno ;
 int ferror (int *) ;
 scalar_t__ fflush (int *) ;
 int fileno (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 char* getenv (char*) ;
 int * stdout ;

void maybe_flush_or_die(FILE *f, const char *desc)
{
 static int skip_stdout_flush = -1;
 struct stat st;
 char *cp;

 if (f == stdout) {
  if (skip_stdout_flush < 0) {
   cp = getenv("GIT_FLUSH");
   if (cp)
    skip_stdout_flush = (atoi(cp) == 0);
   else if ((fstat(fileno(stdout), &st) == 0) &&
     S_ISREG(st.st_mode))
    skip_stdout_flush = 1;
   else
    skip_stdout_flush = 0;
  }
  if (skip_stdout_flush && !ferror(f))
   return;
 }
 if (fflush(f)) {
  check_pipe(errno);
  die_errno("write failure on '%s'", desc);
 }
}
