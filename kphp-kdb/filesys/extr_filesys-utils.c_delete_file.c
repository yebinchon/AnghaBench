
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ lstat (char const*,struct stat*) ;
 int rec_delete_file (char const*,struct stat*) ;

int delete_file (const char *path) {
  struct stat b;
  if (lstat (path, &b)) {
    return -1;
  }
  return rec_delete_file (path, &b);
}
