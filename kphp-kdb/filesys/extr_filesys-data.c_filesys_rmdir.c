
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {int dummy; } ;


 int ENOENT ;
 int filesys_directory_node_free (struct filesys_directory_node*) ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 int lf_rmdir ;

__attribute__((used)) static int filesys_rmdir (const char *path) {
  struct filesys_directory_node *D = filesys_lookup_file (path, lf_rmdir);
  if (D == ((void*)0)) {
    return -ENOENT;
  }
  filesys_directory_node_free (D);
  return 0;
}
