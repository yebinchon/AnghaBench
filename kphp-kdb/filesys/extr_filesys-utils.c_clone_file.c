
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int rec_clone_file (char const* const,char const* const,char*,struct stat*) ;
 scalar_t__ stat (char const* const,struct stat*) ;

int clone_file (const char *const oldpath, const char *const newpath) {
  struct stat b;
  if (stat (oldpath, &b)) {
    return -1;
  }
  return rec_clone_file (oldpath, newpath, "", &b);
}
