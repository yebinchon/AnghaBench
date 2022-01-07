
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_size; int st_mtime; } ;


 scalar_t__ fstat (int,struct stat*) ;

__attribute__((used)) static int get_fsize (int fd, time_t *mtime) {
  struct stat buf;
  if (fstat (fd, &buf)) {
    return -1;
  }
  if (mtime) {
    *mtime = buf.st_mtime;
  }
  return buf.st_size;
}
