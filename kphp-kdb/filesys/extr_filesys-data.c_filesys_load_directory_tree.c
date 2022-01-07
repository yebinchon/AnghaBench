
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {int mode; int uid; int gid; int modification_time; int inode; int* name; struct filesys_directory_node* next; struct filesys_directory_node* head; struct filesys_directory_node* parent; } ;
typedef int l ;
typedef int inode_id_t ;


 int assert (int) ;
 int bread (int*,int) ;
 int tot_directory_nodes ;
 int vkprintf (int,char*,int*) ;
 int* zmalloc (int) ;
 struct filesys_directory_node* zmalloc0 (int) ;

__attribute__((used)) static struct filesys_directory_node *filesys_load_directory_tree (struct filesys_directory_node *parent) {
  inode_id_t inode;
  bread (&inode, sizeof (inode_id_t));
  assert (inode >= -2);
  if (inode == -2LL) {
    return ((void*)0);
  }
  tot_directory_nodes++;
  struct filesys_directory_node *T = zmalloc0 (sizeof (struct filesys_directory_node));
  bread (&T->mode, sizeof (T->mode));
  bread (&T->uid, sizeof (T->uid));
  bread (&T->gid, sizeof (T->gid));
  bread (&T->modification_time, sizeof (T->modification_time));
  int l;
  bread (&l, sizeof (l));
  T->inode = inode;
  T->parent = parent;
  T->name = zmalloc (l + 1);
  T->head = ((void*)0);
  struct filesys_directory_node *tail = ((void*)0);
  bread (T->name, l);
  T->name[l] = 0;

  vkprintf (3, "load_index: %s\n", T->name);

  if (T->inode < 0) {
    struct filesys_directory_node *P;
    while ((P = filesys_load_directory_tree (T)) != ((void*)0) ) {
      if (T->head == ((void*)0)) {
        T->head = tail = P;
      } else {
        tail->next = P;
        tail = P;
      }
    }
  }
  return T;
}
