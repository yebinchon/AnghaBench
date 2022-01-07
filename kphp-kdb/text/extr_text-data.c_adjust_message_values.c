
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int last_local_id; void* delayed_value_tree; void* msg_tree; struct file_user_list_entry* dir_entry; } ;
typedef TYPE_1__ user_t ;
struct TYPE_9__ {int y; int flags; struct value_data* value; } ;
typedef TYPE_2__ tree_t ;
struct value_data {int zero_mask; int fields_mask; int flags; } ;
struct file_user_list_entry {int user_last_local_id; } ;






 int adjust_message_values_internal (TYPE_1__*,int,struct value_data*) ;
 struct value_data* alloc_value_data (int) ;
 int assert (int) ;
 scalar_t__ conv_uid (int) ;
 struct value_data* convert_value_data (struct value_data*,int ,int) ;
 int free_value_data (struct value_data*) ;
 TYPE_1__* get_user (int) ;
 TYPE_1__* get_user_f (int) ;
 scalar_t__ get_user_metafile (TYPE_1__*) ;
 struct file_user_list_entry* lookup_user_directory (int) ;
 int lrand48 () ;
 void* merge_delayed_values (struct value_data*,struct value_data*,int,int) ;
 int read_extra_mask ;
 void* tree_insert (void*,int,int ,struct value_data*) ;
 TYPE_2__* tree_lookup (void*,int) ;
 int write_extra_mask ;

int adjust_message_values (int user_id, int local_id, struct value_data *V) {
  user_t *U;
  struct file_user_list_entry *D;
  tree_t *T, *S;
  struct value_data *W;
  int remaining_mask;

  if (conv_uid (user_id) < 0 || local_id <= 0) {
    free_value_data (V);
    return -1;
  }

  assert (!(V->zero_mask & ~V->fields_mask) && !(V->fields_mask & ~write_extra_mask));

  if (!(V->fields_mask & read_extra_mask)) {

    free_value_data (V);
    return 3;
  }

  U = get_user (user_id);

  if (!U) {
    D = lookup_user_directory (user_id);
    if (!D || local_id > D->user_last_local_id) {
      free_value_data (V);
      return 0;
    }
    U = get_user_f (user_id);
  } else {
    D = U->dir_entry;
    if (local_id > U->last_local_id) {
      free_value_data (V);
      return 0;
    }
  }

  if (V->fields_mask & ~read_extra_mask) {
    V = convert_value_data (V, 0, read_extra_mask);
  }

  if (!D || local_id > D->user_last_local_id || get_user_metafile (U)) {
    return adjust_message_values_internal (U, local_id, V);
  }

  T = tree_lookup (U->msg_tree, local_id);

  if (!T) {
    S = tree_lookup (U->delayed_value_tree, local_id);
    if (!S) {
      U->delayed_value_tree = tree_insert (U->delayed_value_tree, local_id, lrand48 (), V);
      return 3;
    }

    S->value = merge_delayed_values (S->value, V, -1, 1);
    free_value_data (V);
    return 3;
  }



  switch (T->y & 7) {
  case 131:
    free_value_data (V);
    return 0;
  case 130:

    return adjust_message_values_internal (U, local_id, V);
  case 129:
    if (!V->zero_mask) {
      S = tree_lookup (U->delayed_value_tree, local_id);


      if (!S) {
        U->delayed_value_tree = tree_insert (U->delayed_value_tree, local_id, lrand48 (), V);
        return 3;
      }
      S->value = merge_delayed_values (S->value, V, -1, 1);
      free_value_data (V);
      return 3;
    }


    W = alloc_value_data (V->zero_mask);
    W->flags = T->flags & 0xffff;
    T->y += 128 - 129;
    T->value = W;
  case 128:
    S = tree_lookup (U->delayed_value_tree, local_id);

    T->value = merge_delayed_values (T->value, V, V->zero_mask | T->value->fields_mask, 0);

    remaining_mask = V->fields_mask & ~(V->zero_mask | T->value->fields_mask);
    if (remaining_mask) {
      if (!S) {
        if (remaining_mask != V->fields_mask) {
          V = convert_value_data (V, 0, remaining_mask);
        }
        U->delayed_value_tree = tree_insert (U->delayed_value_tree, local_id, lrand48 (), V);
        return 3;
      }
      S->value = merge_delayed_values (S->value, V, ~T->value->fields_mask, 1);
    }
    free_value_data (V);
    return 3;
  }

  assert (0);
  return -1;
}
