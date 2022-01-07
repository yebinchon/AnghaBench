
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {int * updates; scalar_t__ index_data; } ;


 int filesys_inode_unload (struct filesys_inode*) ;
 int free_tree (int *) ;
 int tot_inodes ;
 int zfree (struct filesys_inode*,int) ;

__attribute__((used)) static void free_inode (struct filesys_inode *I) {
  if (I->index_data) {
    filesys_inode_unload (I);
  }
  free_tree (I->updates);
  I->updates = ((void*)0);
  tot_inodes--;
  zfree (I, sizeof (struct filesys_inode));
}
