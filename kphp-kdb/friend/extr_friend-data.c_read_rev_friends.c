
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; int x1; } ;
typedef TYPE_1__ rev_friends_t ;


 int assert (int) ;
 int fprintf (int ,char*) ;
 int memcpy (int *,char*,int) ;
 TYPE_1__* new_rev_friends_node (int ,int ,int ) ;
 int readadv (int) ;
 char* readin (int) ;
 int stderr ;

__attribute__((used)) static rev_friends_t *read_rev_friends (void) {
  char *ptr = readin (1);
  if (!ptr) {
    fprintf (stderr, "Unexpected end of file in read_tree\n");
    return 0;
  }
  char c = ptr[0];
  readadv (1);
  assert (c == 4 || c == 3);
  if (c == 3) {
    return 0;
  }
  ptr = readin (16);
  if (!ptr) {
    fprintf (stderr, "Unexpected end of file in read_tree\n");
    return 0;
  }
  rev_friends_t *T = new_rev_friends_node (0, 0, 0);
  memcpy (&T->x1, ptr, 16);
  readadv (16);
  T->left = read_rev_friends ();
  T->right = read_rev_friends ();
  return T;
}
