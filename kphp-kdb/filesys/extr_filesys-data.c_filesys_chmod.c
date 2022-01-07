
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {scalar_t__ uid; int mode; } ;


 int EACCES ;
 int ENOENT ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 scalar_t__ geteuid () ;
 int lf_find ;

__attribute__((used)) static int filesys_chmod (const char *path, int mode) {
  struct filesys_directory_node *D = filesys_lookup_file (path, lf_find);
  if (D == ((void*)0)) {
    return -ENOENT;
  }
  if (geteuid () && geteuid () != D->uid) {
    return -EACCES;
  }
  D->mode &= ~0777;
  D->mode |= mode;
  return 0;
}
