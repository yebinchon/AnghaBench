
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* last_num_var ;
 size_t namespace_level ;
 int tl_del_var ;
 int tree_act_tl_var (int ,int ) ;
 int tree_clear_tl_var (int ) ;
 int * vars ;

void tl_clear_vars (void) {
  tree_act_tl_var (vars[namespace_level], tl_del_var);
  vars[namespace_level] = tree_clear_tl_var (vars[namespace_level]);
  last_num_var[namespace_level] = 0;
}
