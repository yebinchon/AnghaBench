
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_ltree_x_t ;
typedef int object_id_t ;
typedef int list_id_t ;


 int combine_ltree_x (int ,int ,int *) ;
 scalar_t__ ignore_timestamp ;
 int ignore_tree ;
 scalar_t__ ltree_lookup (int ,int ) ;
 scalar_t__ now ;

int ignore_list_check (list_id_t list_id, object_id_t object_id) {
  if (now < ignore_timestamp) { return 0; }
  static var_ltree_x_t lkey;
  combine_ltree_x (list_id, object_id, &lkey);
  return ltree_lookup (ignore_tree, lkey) != 0;
}
