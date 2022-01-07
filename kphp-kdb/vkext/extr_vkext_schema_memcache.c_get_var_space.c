
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_tree {int dummy; } ;


 struct tl_tree** __vars ;
 struct tl_tree** last_var_ptr ;

struct tl_tree **get_var_space (struct tl_tree **vars, int n) {

  if (vars - n < __vars) { return 0; }
  if (last_var_ptr > vars - n) {
    last_var_ptr = vars - n;
  }
  return vars - n;
}
