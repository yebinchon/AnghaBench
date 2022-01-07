
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RBasic {int dummy; } ;
struct RArray {int dummy; } ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ ARY_CAPA (struct RArray*) ;
 scalar_t__ ARY_LEN (struct RArray*) ;
 scalar_t__ ARY_MAX_SIZE ;
 scalar_t__ ARY_PTR (struct RArray*) ;
 int ARY_SET_LEN (struct RArray*,scalar_t__) ;
 int E_ARGUMENT_ERROR ;
 int array_copy (scalar_t__,scalar_t__,scalar_t__) ;
 int ary_expand_capa (int *,struct RArray*,scalar_t__) ;
 int ary_modify (int *,struct RArray*) ;
 int ary_replace (int *,struct RArray*,struct RArray*) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_write_barrier (int *,struct RBasic*) ;

__attribute__((used)) static void
ary_concat(mrb_state *mrb, struct RArray *a, struct RArray *a2)
{
  mrb_int len;

  if (ARY_LEN(a) == 0) {
    ary_replace(mrb, a, a2);
    return;
  }
  if (ARY_LEN(a2) > ARY_MAX_SIZE - ARY_LEN(a)) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "array size too big");
  }
  len = ARY_LEN(a) + ARY_LEN(a2);

  ary_modify(mrb, a);
  if (ARY_CAPA(a) < len) {
    ary_expand_capa(mrb, a, len);
  }
  array_copy(ARY_PTR(a)+ARY_LEN(a), ARY_PTR(a2), ARY_LEN(a2));
  mrb_write_barrier(mrb, (struct RBasic*)a);
  ARY_SET_LEN(a, len);
}
