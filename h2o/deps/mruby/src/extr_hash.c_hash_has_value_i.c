
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct has_v_arg {int found; int val; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int TRUE ;
 scalar_t__ mrb_equal (int *,int ,int ) ;

__attribute__((used)) static int
hash_has_value_i(mrb_state *mrb, mrb_value key, mrb_value val, void *p)
{
  struct has_v_arg *arg = (struct has_v_arg*)p;

  if (mrb_equal(mrb, arg->val, val)) {
    arg->found = TRUE;
    return 1;
  }
  return 0;
}
