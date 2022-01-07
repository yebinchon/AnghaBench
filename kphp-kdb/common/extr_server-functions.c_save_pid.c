
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,long) ;
 int kprintf (char*,char const*) ;

void save_pid (const pid_t pid, const char *pid_file) {
  FILE *fp;
  if (pid_file == ((void*)0))
    return;

  if ((fp = fopen(pid_file, "w")) == ((void*)0)) {
    kprintf ("Could not open the pid file %s for writing\n", pid_file);
    return;
  }

  fprintf(fp,"%ld\n", (long)pid);
  if (fclose(fp) == -1) {
    kprintf ("Could not close the pid file %s.\n", pid_file);
    return;
  }
}
