
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_var_value {long long num_val; struct tl_combinator_tree* val; } ;
struct tl_combinator_tree {scalar_t__ type; scalar_t__ type_flags; int data; } ;


 int _T ;
 scalar_t__ __tok ;
 int assert (int) ;
 struct tl_combinator_tree* tl_get_var_value (int ,int ) ;
 scalar_t__ tl_get_var_value_num (int ,int ) ;
 scalar_t__ type_num ;
 scalar_t__ type_num_value ;
 scalar_t__ type_type ;
 int vkprintf (int,char*) ;

void check_nat_val (struct tl_var_value v) {
  if (!__tok) { return; }
  long long x = v.num_val;
  struct tl_combinator_tree *L = v.val;
  if (L->type == type_type) { return;}
  while (1) {
    if (L->type == type_num_value) {
      if (x + L->type_flags < 0) {
        __tok = 0;
        vkprintf (3, "Variable has negative value. Error.\n");
        return;
      } else {
        return;
      }
    }
    assert (L->type == type_num);
    x += L->type_flags;
    x += tl_get_var_value_num (_T, L->data);
    L = tl_get_var_value (_T, L->data);
    if (!L) { return;}
  }
}
