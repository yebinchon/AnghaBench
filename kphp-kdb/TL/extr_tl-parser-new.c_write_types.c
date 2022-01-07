
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAGIC ;
 int TLS_SCHEMA ;
 int TLS_SCHEMA_V2 ;
 int __f ;
 scalar_t__ num ;
 int schema_version ;
 int time (int ) ;
 int tl_function_tree ;
 int tl_type_tree ;
 int total_constructors_num ;
 int total_functions_num ;
 int total_types_num ;
 int tree_act_tl_constructor (int ,int ) ;
 int tree_act_tl_type (int ,int ) ;
 int wint (int ) ;
 int write_function ;
 int write_type ;
 int write_type_constructors ;

void write_types (int f) {
  __f = f;
  if (schema_version == 1) {
    wint (TLS_SCHEMA);
  } else if (schema_version == 2) {
    wint (TLS_SCHEMA_V2);
  } else {
    wint (MAGIC);
  }
  if (schema_version >= 1) {
    wint (0);
    wint (time (0));
  }
  num = 0;
  if (schema_version >= 1) {
    wint (total_types_num);
  }
  tree_act_tl_type (tl_type_tree, write_type);
  if (schema_version >= 1) {
    wint (total_constructors_num);
  }
  tree_act_tl_type (tl_type_tree, write_type_constructors);
  if (schema_version >= 1) {
    wint (total_functions_num);
  }
  tree_act_tl_constructor (tl_function_tree, write_function);
}
