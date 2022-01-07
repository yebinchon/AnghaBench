
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fields ;
 size_t namespace_level ;
 int tree_clear_tl_field (int ) ;

void tl_clear_fields (void) {

  fields[namespace_level] = tree_clear_tl_field (fields[namespace_level]);
}
