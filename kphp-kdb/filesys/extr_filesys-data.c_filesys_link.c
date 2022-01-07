
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {int reference_count; } ;
struct filesys_directory_node {scalar_t__ inode; int gid; int uid; int mode; } ;
typedef scalar_t__ inode_id_t ;


 int EEXIST ;
 int EFAULT ;
 int ENOENT ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 struct filesys_inode* get_inode_f (scalar_t__,int ) ;
 int lf_creat ;
 int lf_find ;
 int vkprintf (int,char*,char const*,char const*) ;

__attribute__((used)) static int filesys_link (const char *src_filename, const char *dest_filename) {
  vkprintf (2, "filesys_link (%s, %s)\n", src_filename, dest_filename);

  struct filesys_directory_node *E = filesys_lookup_file (dest_filename, lf_find);
  if (E != ((void*)0)) { return -EEXIST; }
  struct filesys_directory_node *D = filesys_lookup_file (src_filename, lf_find);
  if (D == ((void*)0)) { return -ENOENT; }
  if (D->inode < 0) { return -ENOENT; }
  inode_id_t inode = D->inode;
  struct filesys_inode *I = get_inode_f (inode, 0);
  if (I == ((void*)0)) { return -EFAULT; }
  E = filesys_lookup_file (dest_filename, lf_creat);
  if (E == ((void*)0)) { return -ENOENT; }
  I->reference_count++;
  E->inode = inode;
  E->mode = D->mode;
  E->uid = D->uid;
  E->gid = D->gid;
  return 0;
}
