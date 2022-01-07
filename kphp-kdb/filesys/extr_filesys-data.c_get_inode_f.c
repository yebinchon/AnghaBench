
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {scalar_t__ inode; scalar_t__ reference_count; struct filesys_inode* hnext; } ;
typedef scalar_t__ inode_id_t ;


 void** H ;
 int INODE_HASH_SIZE ;
 int tot_inodes ;
 struct filesys_inode* zmalloc0 (int) ;

struct filesys_inode *get_inode_f (inode_id_t inode, int force) {
  if (inode < 0) {
    return ((void*)0);
  }
  unsigned h = ((unsigned) inode) & (INODE_HASH_SIZE - 1);
  struct filesys_inode **p = H + h, *V;
  while (*p) {
    V = *p;
    if (V->inode == inode) {
      *p = V->hnext;
      int keep = 1;
      if (force < 0) {
        if (--(V->reference_count) <= 0) {
          keep = 0;
        }
      }
      if (keep) {
        V->hnext = H[h];
        H[h] = V;
      }
      return V;
    }
    p = &V->hnext;
  }
  if (force <= 0) {
    return ((void*)0);
  }
  V = zmalloc0 (sizeof (struct filesys_inode));
  V->inode = inode;
  V->hnext = H[h];

  H[h] = V;
  tot_inodes++;
  return V;
}
