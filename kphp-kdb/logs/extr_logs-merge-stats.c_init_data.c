
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int engineF ;
 int engineN ;
 int exit (int) ;
 int ** f ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int left_files ;
 int snprintf (char*,int,char*,char*,int) ;
 char* stat_name ;
 int stderr ;

void init_data (void) {
  char fname[100];
  int i;

  for (i = engineF; i < engineN; i++) {
    if (snprintf (fname, 100, "%s%03d", stat_name, i) >= 100) {
      fprintf (stderr, "Filename is too long.\n");
      exit (1);
    }
    f[i] = fopen (fname, "r");
    if (f[i] == ((void*)0)) {
      fprintf (stderr, "File '%s' not found.\n", fname);
      exit (1);
    }
    left_files++;
  }
}
