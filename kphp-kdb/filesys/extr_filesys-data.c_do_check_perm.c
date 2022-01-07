
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {int mode; unsigned short uid; scalar_t__ gid; } ;


 int EACCES ;
 int errno ;
 scalar_t__ getegid () ;
 unsigned short geteuid () ;

int do_check_perm (struct filesys_directory_node *D, int mode) {
  unsigned short uid = geteuid ();
  if (!uid) {
    return 0;
  }
  int o = (D->mode >> ((D->uid == uid) ? 6 : (D->gid == getegid ()) ? 3 : 0)) & 7;
  if ((o & mode) != mode) {
    errno = EACCES;
    return -EACCES;
  }
  return 0;
}
