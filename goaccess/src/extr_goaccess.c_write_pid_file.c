
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int FILE ;


 int FATAL (char*,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int) ;
 int strerror (int ) ;

__attribute__((used)) static void
write_pid_file (const char *path, pid_t pid)
{
  FILE *pidfile;

  if (!path)
    return;

  if ((pidfile = fopen (path, "w"))) {
    fprintf (pidfile, "%d", pid);
    fclose (pidfile);
  } else {
    FATAL ("Unable to open the specified pid file. %s", strerror (errno));
  }
}
