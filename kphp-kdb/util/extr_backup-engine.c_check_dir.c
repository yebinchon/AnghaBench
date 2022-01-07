
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_dev; int st_mode; } ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 scalar_t__ MAX_DIRNAME_LEN ;
 int S_ISDIR (int ) ;
 scalar_t__ errno ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int check_dir (char *dirname, struct stat *buf, int create) {
  if (stat (dirname, buf) < 0) {
    if (errno != ENOENT || !create) {
      return -1;
    }
    if (mkdir (dirname, 0750) < 0) {
      return -1;
    }
    if (stat (dirname, buf) < 0) {
      return -1;
    }
  }
  if (!S_ISDIR (buf->st_mode) || strlen (dirname) > MAX_DIRNAME_LEN) {
    errno = ENOTDIR;
    return -1;
  }
  return buf->st_dev;
}
