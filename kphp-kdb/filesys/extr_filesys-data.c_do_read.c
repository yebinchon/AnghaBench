
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {int dummy; } ;
struct filesys_directory_node {scalar_t__ inode; } ;


 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 int filesys_read (struct filesys_inode*,unsigned int,unsigned int,char*) ;
 struct filesys_inode* get_inode_f (scalar_t__,int ) ;
 int lf_find ;
 int vkprintf (int,char*,scalar_t__) ;

int do_read (unsigned int offset, unsigned int size, const char *filename, char *output) {
  struct filesys_directory_node *D = filesys_lookup_file (filename, lf_find);
  if (D == ((void*)0)) { return -1; }
  if (D->inode < 0) { return -2; }
  struct filesys_inode *I = get_inode_f (D->inode, 0);
  if (I == ((void*)0)) { return -3; }

  vkprintf (3, "do_read: inode = %lld\n", D->inode);

  return filesys_read (I, offset, size, output);
}
