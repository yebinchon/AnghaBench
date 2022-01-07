
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {int mode; unsigned short uid; unsigned short gid; } ;


 int ENOENT ;
 int S_IFDIR ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 int lf_creat ;

__attribute__((used)) static int filesys_mkdir (const char *path, int mode, unsigned short uid, unsigned short gid) {
  struct filesys_directory_node *D = filesys_lookup_file (path, lf_creat);
  if (D == ((void*)0)) {
    return -ENOENT;
  }
  D->mode = mode | S_IFDIR;
  D->uid = uid;
  D->gid = gid;
  return (D != ((void*)0)) ? 0 : -ENOENT;
}
