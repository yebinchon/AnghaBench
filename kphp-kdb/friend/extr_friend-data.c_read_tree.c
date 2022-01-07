
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; int x; } ;
typedef TYPE_1__ tree_t ;


 int assert (int) ;
 int fprintf (int ,char*) ;
 int memcpy (int *,char*,int) ;
 TYPE_1__* new_tree_node (int ,int ) ;
 int readadv (int) ;
 char* readin (int) ;
 int stderr ;

__attribute__((used)) static tree_t *read_tree (void) {
  char *ptr = readin (1);
  if (!ptr) {
    fprintf (stderr, "Unexpected end of file in read_tree\n");
    return 0;
  }
  char c = ptr[0];
  readadv (1);
  assert (c == 0 || c == 1);
  if (!c) {
    return 0;
  }
  ptr = readin (16);
  if (!ptr) {
    fprintf (stderr, "Unexpected end of file in read_tree\n");
    return 0;
  }
  tree_t *T = new_tree_node (0, 0);
  memcpy (&T->x, ptr, 16);
  readadv (16);
  T->left = read_tree ();
  T->right = read_tree ();
  return T;
}
