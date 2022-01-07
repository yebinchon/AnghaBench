
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int kprintf (char*,char*) ;
 int * log_file ;

int logfile (char *s) {
  if (log_file) {
    fclose (log_file);
    log_file = ((void*)0);
  }
  log_file = fopen (s, "w");
  if (log_file == ((void*)0)) {
    kprintf ("fopen (\"%s\", \"w\") fail. %m\n", s);
  }
  return 0;
}
