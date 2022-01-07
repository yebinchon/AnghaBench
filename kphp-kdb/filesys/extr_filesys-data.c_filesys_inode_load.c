
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {scalar_t__ index_offset; long index_filesize; int * index_data; } ;


 int SEEK_SET ;
 int add_use (struct filesys_inode*) ;
 int assert (int) ;
 int del_use (struct filesys_inode*) ;
 int filesys_inode_unload (int ) ;
 int idx_fd ;
 int lru_head ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int * malloc (long) ;
 scalar_t__ max_loaded_index_data ;
 long read (int ,int *,long) ;
 scalar_t__ tot_loaded_index_data ;
 int tot_loaded_metafiles ;

__attribute__((used)) static void filesys_inode_load (struct filesys_inode *I) {
  if (I->index_offset < 0) {
    return;
  }

  if (I->index_data != ((void*)0)) {
    del_use (I);
    add_use (I);
    return;
  }

  I->index_data = malloc (I->index_filesize);
  assert (lseek (idx_fd, I->index_offset, SEEK_SET) >= 0);
  long r = read (idx_fd, I->index_data, I->index_filesize);
  assert (r == I->index_filesize);
  tot_loaded_index_data += I->index_filesize;
  tot_loaded_metafiles++;
  add_use (I);
  while (tot_loaded_metafiles > 1 && tot_loaded_index_data > max_loaded_index_data) {
    filesys_inode_unload (lru_head);
  }
}
