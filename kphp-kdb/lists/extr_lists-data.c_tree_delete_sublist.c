
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int var_ltree_x_t ;
struct TYPE_5__ {int x; } ;
typedef TYPE_1__ tree_ext_small_t ;
struct tree_payload {int flags; int global_id; } ;
struct TYPE_6__ {int list_id; } ;


 struct tree_payload* LPAYLOAD (TYPE_1__*) ;
 TYPE_3__* M_List ;
 int combine_ltree_x (int ,int ,int *) ;
 int delete_list_entry_aux (int ,int ,int) ;
 int f_and_c ;
 int f_cnt ;
 int f_xor_c ;
 int ltree_delete (int ,int ) ;
 int object_tree ;
 int tot_list_entries ;

__attribute__((used)) static int tree_delete_sublist (tree_ext_small_t *T) {
  struct tree_payload *P = LPAYLOAD (T);
  if (!((P->flags ^ f_xor_c) & f_and_c)) {
    delete_list_entry_aux (T->x, P->global_id, P->flags);
    static var_ltree_x_t ltree_key;
    combine_ltree_x (M_List->list_id, T->x, &ltree_key);
    object_tree = ltree_delete (object_tree, ltree_key);
    tot_list_entries--;
    f_cnt++;
    return 0;
  } else {
    return 1;
  }
}
