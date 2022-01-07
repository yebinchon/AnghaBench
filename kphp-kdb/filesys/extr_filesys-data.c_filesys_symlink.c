
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {int dummy; } ;
typedef scalar_t__ inode_id_t ;


 int ENOENT ;
 int S_IFLNK ;
 scalar_t__ filesys_create (char const*,int,int ,int ) ;
 int filesys_write (struct filesys_inode*,int ,int ,char const*) ;
 struct filesys_inode* get_inode_f (scalar_t__,int ) ;
 int getgid () ;
 int getuid () ;
 int strlen (char const*) ;

__attribute__((used)) static int filesys_symlink (const char *oldpath, const char *newpath) {
  inode_id_t inode = filesys_create (newpath, 0777 | S_IFLNK, getuid (), getgid ());
  if (inode < 0) {
    return -ENOENT;
  }
  struct filesys_inode *I = get_inode_f (inode, 0);
  filesys_write (I, 0, strlen (oldpath), oldpath);
  return 0;
}
