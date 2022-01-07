
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int _ (char*) ;
 scalar_t__ adjust_shared_perm (char const*) ;
 int die (int ,char const*) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ mkdir (char const*,int) ;
 int perror (char const*) ;

void safe_create_dir(const char *dir, int share)
{
 if (mkdir(dir, 0777) < 0) {
  if (errno != EEXIST) {
   perror(dir);
   exit(1);
  }
 }
 else if (share && adjust_shared_perm(dir))
  die(_("Could not make %s writable by group"), dir);
}
