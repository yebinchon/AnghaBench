
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void tl_tree ;


 scalar_t__ int_to_var_nat_const_init (int ) ;
 int schema_version ;
 scalar_t__ tl_parse_error () ;
 int tl_parse_int () ;
 int tl_parse_long () ;

struct tl_tree *read_num_const (int *var_num) {
  void *res = (void *)int_to_var_nat_const_init (schema_version >= 2 ? tl_parse_int () : tl_parse_long ());
  return tl_parse_error () ? 0 : res;
}
