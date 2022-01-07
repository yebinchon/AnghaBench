
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RBasic {int dummy; } ;
struct RArray {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ ARY_CAPA (struct RArray*) ;
 scalar_t__ ARY_LEN (struct RArray*) ;
 scalar_t__ ARY_PTR (struct RArray*) ;
 int ARY_SET_LEN (struct RArray*,scalar_t__) ;
 int array_copy (scalar_t__,int *,scalar_t__) ;
 int ary_expand_capa (int *,struct RArray*,scalar_t__) ;
 int ary_modify (int *,struct RArray*) ;
 struct RArray* mrb_ary_ptr (int ) ;
 int mrb_get_args (int *,char*,int **,scalar_t__*) ;
 int mrb_write_barrier (int *,struct RBasic*) ;

__attribute__((used)) static mrb_value
mrb_ary_push_m(mrb_state *mrb, mrb_value self)
{
  mrb_value *argv;
  mrb_int len, len2, alen;
  struct RArray *a;

  mrb_get_args(mrb, "*!", &argv, &alen);
  a = mrb_ary_ptr(self);
  ary_modify(mrb, a);
  len = ARY_LEN(a);
  len2 = len + alen;
  if (ARY_CAPA(a) < len2) {
    ary_expand_capa(mrb, a, len2);
  }
  array_copy(ARY_PTR(a)+len, argv, alen);
  ARY_SET_LEN(a, len2);
  mrb_write_barrier(mrb, (struct RBasic*)a);

  return self;
}
