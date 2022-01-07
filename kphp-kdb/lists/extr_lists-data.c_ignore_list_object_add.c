
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_ltree_x_t ;
typedef int object_id_t ;
typedef int list_id_t ;


 int combine_ltree_x (int ,int ,int *) ;
 int ignore_tree ;
 int lrand48 () ;
 int ltree_insert (int ,int ,int ) ;

void ignore_list_object_add (list_id_t list_id, object_id_t object_id) {
  static var_ltree_x_t lkey;
  combine_ltree_x (list_id, object_id, &lkey);
  ignore_tree = ltree_insert (ignore_tree, lkey, lrand48 ());
}
