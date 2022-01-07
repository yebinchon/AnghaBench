
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; int x; } ;
typedef TYPE_1__ privacy_t ;


 scalar_t__ compute_privacy_size (TYPE_1__*) ;
 int writeout (int *,scalar_t__) ;
 int writeout_char (int) ;

__attribute__((used)) static void dump_privacy_tree (privacy_t *T) {
  if (T) {
    writeout_char (3);
  } else {
    writeout_char (2);
    return;
  }
  writeout (&T->x, compute_privacy_size (T) - 2 * sizeof (privacy_t *));
  dump_privacy_tree (T->left);
  dump_privacy_tree (T->right);
}
