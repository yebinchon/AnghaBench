
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {int reference_count; int index_offset; scalar_t__ index_filesize; scalar_t__ filesize; int modification_time; } ;
struct filesys_directory_node {int mode; unsigned short uid; unsigned short gid; int inode; } ;
typedef int inode_id_t ;


 int S_IFREG ;
 int cur_inode ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 struct filesys_inode* get_inode_f (int,int) ;
 int lf_creat ;
 int lf_find ;
 int now ;
 int vkprintf (int,char*,char const*,int,unsigned short,unsigned short,int) ;

__attribute__((used)) static inode_id_t filesys_create (const char *path, int mode, unsigned short uid, unsigned short gid) {
  struct filesys_directory_node *F = filesys_lookup_file (path, lf_find);
  if (F != ((void*)0)) {
    return -3;
  }
  F = filesys_lookup_file (path, lf_creat);
  if (F == ((void*)0)) {
    return -2;
  }
  F->mode = mode | S_IFREG;
  F->uid = uid;
  F->gid = gid;
  F->inode = cur_inode++;

  vkprintf (2, "creat: %s, mode = %o, uid = %d, gid = %d, inode = %lld\n", path, mode, uid, gid, F->inode);

  struct filesys_inode *I = get_inode_f (F->inode, 1);
  I->reference_count = 1;
  I->modification_time = now;
  I->filesize = I->index_filesize = 0;
  I->index_offset = -1;
  return F->inode;
}
