
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (scalar_t__) ;
 int exit (int) ;
 scalar_t__* fd ;
 char** fnames ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int unlink (char*) ;

void fail (void) {
  int i;
  fprintf (stderr, "fatal error, deleting all output files...\n");
  for (i = 2; i <= 4; i++) {
    if (fd[i] >= 0) { close (fd[2]); }
    if (fnames[i]) {
      fprintf (stderr, "deleting %s\n", fnames[i]);
      unlink (fnames[i]);
    }
  }
  exit (2);
}
