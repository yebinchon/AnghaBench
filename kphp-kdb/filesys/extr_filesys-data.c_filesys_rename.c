
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {int reference_count; } ;
struct filesys_directory_node {scalar_t__ inode; int gid; int uid; int mode; } ;
typedef scalar_t__ inode_id_t ;


 int EFAULT ;
 int ENOENT ;
 int assert (int ) ;
 int filesys_directory_node_free (struct filesys_directory_node*) ;
 struct filesys_directory_node* filesys_lookup_file (char const*,int ) ;
 struct filesys_inode* get_inode_f (scalar_t__,int ) ;
 int lf_creat ;
 int lf_find ;
 int lf_unlink ;
 int vkprintf (int,char*,char const*,char const*) ;

__attribute__((used)) static int filesys_rename (const char *src_filename, const char *dest_filename) {
  vkprintf (2, "filesys_rename (%s, %s)\n", src_filename, dest_filename);

  struct filesys_directory_node *D = filesys_lookup_file (src_filename, lf_find);
  if (D == ((void*)0)) { return -ENOENT; }
  if (D->inode < 0) { return -ENOENT; }
  struct filesys_directory_node *E = filesys_lookup_file (dest_filename, lf_find);
  if (E != ((void*)0) && E->inode == D->inode) {


    return 0;
  }

  inode_id_t inode = D->inode;
  struct filesys_inode *I = get_inode_f (inode, 0);
  if (I == ((void*)0)) { return -EFAULT; }
  if (E != ((void*)0)) {
    E = filesys_lookup_file (dest_filename, lf_unlink);
    assert (E != ((void*)0));
    filesys_directory_node_free (E);
  }

  E = filesys_lookup_file (dest_filename, lf_creat);
  if (E == ((void*)0)) { return -ENOENT; }
  I->reference_count++;
  E->inode = inode;
  E->mode = D->mode;
  E->uid = D->uid;
  E->gid = D->gid;
  D = filesys_lookup_file (src_filename, lf_unlink);
  assert (D != ((void*)0));
  filesys_directory_node_free (D);
  return 0;
}
