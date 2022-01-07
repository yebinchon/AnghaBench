
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_filesys_ftruncate {unsigned int size; int inode; } ;
struct filesys_inode {int dummy; } ;
typedef int inode_id_t ;


 int EBADF ;
 int LEV_FILESYS_FTRUNCATE ;
 struct lev_filesys_ftruncate* alloc_log_event (int ,int,int ) ;
 int filesys_ftruncate (struct filesys_inode*,unsigned int) ;
 struct filesys_inode* get_inode_f (int ,int ) ;

int do_inode_truncate (inode_id_t inode, unsigned int size) {
  struct filesys_inode *I = get_inode_f (inode, 0);
  if (I == ((void*)0)) { return -EBADF; }
  struct lev_filesys_ftruncate *E = alloc_log_event (LEV_FILESYS_FTRUNCATE, sizeof (struct lev_filesys_ftruncate), 0);
  E->inode = inode;
  E->size = size;
  return filesys_ftruncate (I, size);
}
