
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int assert (int) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int srand48 (long) ;

void randomize (void) {
  static char RB[16];
  int rfd = open ("/dev/urandom", O_RDONLY);
  assert (read (rfd, RB, sizeof (long)) == sizeof (long));
  srand48 (*((long *) RB));
}
