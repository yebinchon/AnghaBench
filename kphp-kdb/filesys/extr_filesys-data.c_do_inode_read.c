
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {int dummy; } ;
typedef int inode_id_t ;


 int EBADF ;
 int filesys_read (struct filesys_inode*,unsigned int,unsigned int,char*) ;
 struct filesys_inode* get_inode_f (int ,int ) ;

int do_inode_read (unsigned int offset, unsigned int size, inode_id_t inode, char *output) {
  struct filesys_inode *I = get_inode_f (inode, 0);
  if (I == ((void*)0)) { return -EBADF; }
  return filesys_read (I, offset, size, output);
}
