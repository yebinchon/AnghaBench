
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {unsigned short uid; unsigned short gid; } ;


 int EACCES ;
 int ENOENT ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 unsigned short geteuid () ;
 int lf_find ;

__attribute__((used)) static int filesys_chown (const char *path, unsigned short uid, unsigned short gid) {
  struct filesys_directory_node *D = filesys_lookup_file (path, lf_find);
  if (D == ((void*)0)) {
    return -ENOENT;
  }
  if (geteuid () && geteuid () != D->uid) {
    return -EACCES;
  }
  D->uid = uid;
  D->gid = gid;
  return 0;
}
