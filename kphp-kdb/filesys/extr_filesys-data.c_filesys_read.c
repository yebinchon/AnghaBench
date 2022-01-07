
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {unsigned int index_filesize; int * index_data; } ;


 unsigned int copy_updates (struct filesys_inode*,unsigned int,unsigned int,char*,unsigned int*) ;
 int filesys_inode_load (struct filesys_inode*) ;
 int memcpy (char*,int *,unsigned int) ;
 int memset (char*,int ,unsigned int) ;
 int vkprintf (int,char*) ;

__attribute__((used)) static int filesys_read (struct filesys_inode *I, unsigned int offset, unsigned int length, char *data) {
  unsigned int blocksize;
  memset (data, 0, length);
  if (copy_updates (I, offset, length, data, &blocksize) == length) {
    return length;
  }

  vkprintf (3, "filesys_read: before memset\n");

  if (offset >= I->index_filesize) {

    return blocksize;
  }
  filesys_inode_load (I);
  if (I->index_data) {
    unsigned int moved_bytes = I->index_filesize - offset;
    if (moved_bytes > length) {
      moved_bytes = length;
    }
    memcpy (data, &I->index_data[offset], moved_bytes);
    if (blocksize < moved_bytes) {
      blocksize = moved_bytes;
    }
  }
  unsigned int tmp;
  copy_updates (I, offset, length, data, &tmp);
  return blocksize;
}
