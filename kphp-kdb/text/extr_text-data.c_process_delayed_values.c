
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int user_t ;
struct TYPE_4__ {struct TYPE_4__* right; int value; int x; struct TYPE_4__* left; } ;
typedef TYPE_1__ tree_t ;


 scalar_t__ adjust_message_values_internal (int *,int ,int ) ;
 int assert (int) ;
 int zfree (TYPE_1__*,int) ;

__attribute__((used)) static void process_delayed_values (user_t *U, tree_t *T) {
  if (!T) {
    return;
  }

  process_delayed_values (U, T->left);

  assert (adjust_message_values_internal (U, T->x, T->value) >= 0);

  process_delayed_values (U, T->right);

  zfree (T, sizeof (tree_t));
}
