
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {int modification_time; } ;


 int ENOENT ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 int lf_find ;

__attribute__((used)) static int filesys_set_mtime (const char *path, int modification_time) {
  struct filesys_directory_node *D = filesys_lookup_file (path, lf_find);
  if (D == ((void*)0)) {
    return -ENOENT;
  }
  D->modification_time = modification_time;
  return 0;
}
