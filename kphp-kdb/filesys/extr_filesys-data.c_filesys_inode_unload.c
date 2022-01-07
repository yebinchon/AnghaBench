
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {scalar_t__ index_filesize; int * index_data; } ;


 int del_use (struct filesys_inode*) ;
 int free (int *) ;
 int tot_loaded_index_data ;
 int tot_loaded_metafiles ;

__attribute__((used)) static void filesys_inode_unload (struct filesys_inode *I) {
  if (I->index_data == ((void*)0)) { return; }
  free (I->index_data);
  I->index_data = ((void*)0);
  tot_loaded_index_data -= I->index_filesize;
  tot_loaded_metafiles--;
  del_use (I);
}
