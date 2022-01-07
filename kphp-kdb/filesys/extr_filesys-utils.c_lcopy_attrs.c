
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int times ;
struct timeval {int tv_sec; } ;
struct stat {int st_mode; int st_mtime; int st_atime; int st_gid; int st_uid; } ;


 int ENOSYS ;
 int S_ISLNK (int ) ;
 scalar_t__ chmod (char*,int ) ;
 int errno ;
 scalar_t__ lchown (char*,int ,int ) ;
 scalar_t__ lutimes (char*,struct timeval*) ;
 int memset (struct timeval*,int ,int) ;
 scalar_t__ utimes (char*,struct timeval*) ;
 int vkprintf (int,char*,char*) ;

int lcopy_attrs (char *filename, struct stat *S) {
  if (!S_ISLNK (S->st_mode)) {
    if (chmod (filename, S->st_mode) < 0) {
      vkprintf (1, "chmod for %s failed. %m\n", filename);
      return -1;
    }
  }
  if (lchown (filename, S->st_uid, S->st_gid) < 0) {
    vkprintf (1, "lchown for %s failed. %m\n", filename);
    return -1;
  }
  struct timeval times[2];
  memset (times, 0, sizeof (times));
  times[0].tv_sec = S->st_atime;
  times[1].tv_sec = S->st_mtime;
  errno = 0;
  if (lutimes (filename, times) < 0) {
    int err = errno;
    vkprintf (1, "lutimes for %s failed. %m\n", filename);
    if (err == ENOSYS && !S_ISLNK (S->st_mode)) {
      if (utimes (filename, times) < 0) {
        vkprintf (1, "utimes for %s failed. %m\n", filename);
        return -3;
      }
      errno = 0;
      return 0;
    }
    return -2;
  }
  return 0;
}
