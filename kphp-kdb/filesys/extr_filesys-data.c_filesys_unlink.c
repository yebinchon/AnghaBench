
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {scalar_t__ reference_count; } ;
struct filesys_directory_node {int inode; } ;


 int EFAULT ;
 int ENOENT ;
 int filesys_directory_node_free (struct filesys_directory_node*) ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 int free_inode (struct filesys_inode*) ;
 struct filesys_inode* get_inode_f (int ,int) ;
 int lf_unlink ;
 int vkprintf (int,char*,char const*) ;

__attribute__((used)) static int filesys_unlink (const char *path) {
  vkprintf (2, "filesys_unlink (%s)\n", path);
  struct filesys_directory_node *D = filesys_lookup_file (path, lf_unlink);
  if (D == ((void*)0)) { return -ENOENT; }
  struct filesys_inode *I = get_inode_f (D->inode, -1);
  if (I == ((void*)0)) { return -EFAULT; }
  if (I->reference_count <= 0) {
    free_inode (I);
  }
  filesys_directory_node_free (D);
  return 0;
}
