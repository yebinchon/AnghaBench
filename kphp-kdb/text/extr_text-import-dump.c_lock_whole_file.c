
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_type; scalar_t__ l_len; scalar_t__ l_start; int l_whence; } ;


 int F_SETLK ;
 int SEEK_SET ;
 scalar_t__ fcntl (int,int ,struct flock*) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

int lock_whole_file (int fd, int mode) {
  static struct flock L;
  L.l_type = mode;
  L.l_whence = SEEK_SET;
  L.l_start = 0;
  L.l_len = 0;
  if (fcntl (fd, F_SETLK, &L) < 0) {
    fprintf (stderr, "cannot lock file %d: %m\n", fd);
    return -1;
  }
  return 1;
}
