
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int var_ltree_x_t ;
struct TYPE_6__ {struct TYPE_6__* right; struct TYPE_6__* left; int x; } ;
typedef TYPE_1__ tree_ext_large_t ;


 scalar_t__ NIL ;
 int NODE_TYPE (TYPE_1__*) ;
 scalar_t__ SMALL_NODE (TYPE_1__*) ;


 int combine_ltree_x (int ,int ,int *) ;
 int current_list_id ;
 int free_tree_ext_large_node (TYPE_1__*) ;
 int ltree_delete (int ,int ) ;
 int object_tree ;
 int tot_list_entries ;

__attribute__((used)) static void delete_list_objects (tree_ext_large_t *T, int delete_from_object_tree) {
  static var_ltree_x_t ltx;
  if (SMALL_NODE(T) != NIL) {
    switch (NODE_TYPE(T)) {
    case 128:
      combine_ltree_x (current_list_id, T->x, &ltx);
      if (delete_from_object_tree) {
        object_tree = ltree_delete (object_tree, ltx);
      }
      tot_list_entries--;
      break;
    case 129:
      tot_list_entries++;
    }
    delete_list_objects (T->left, delete_from_object_tree);
    delete_list_objects (T->right, delete_from_object_tree);
    free_tree_ext_large_node (T);
  }
}
