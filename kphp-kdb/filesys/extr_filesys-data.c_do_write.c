
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {scalar_t__ inode; } ;


 int do_inode_write (unsigned int,unsigned int,scalar_t__,char*) ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 int lf_find ;

int do_write (unsigned int offset, unsigned int size, char *input, const char *filename) {
  struct filesys_directory_node *D = filesys_lookup_file (filename, lf_find);
  if (D == ((void*)0)) { return -1; }
  if (D->inode < 0) { return -2; }
  return do_inode_write (offset, size, D->inode, input);
}
