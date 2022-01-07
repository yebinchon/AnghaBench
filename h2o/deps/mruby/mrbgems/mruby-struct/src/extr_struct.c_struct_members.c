
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 scalar_t__ RARRAY_LEN (int ) ;
 scalar_t__ RSTRUCT_LEN (int ) ;
 int mrb_array_p (int ) ;
 int mrb_ary_resize (int *,int ,scalar_t__) ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_obj_class (int *,int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ,int ) ;
 int struct_s_members (int *,int ) ;

__attribute__((used)) static mrb_value
struct_members(mrb_state *mrb, mrb_value s)
{
  mrb_value members = struct_s_members(mrb, mrb_obj_class(mrb, s));
  if (!mrb_array_p(s)) {
    mrb_raise(mrb, E_TYPE_ERROR, "corrupted struct");
  }
  if (RSTRUCT_LEN(s) != RARRAY_LEN(members)) {
    if (RSTRUCT_LEN(s) == 0) {
      mrb_ary_resize(mrb, s, RARRAY_LEN(members));
    }
    else {
      mrb_raisef(mrb, E_TYPE_ERROR,
                 "struct size differs (%S required %S given)",
                 mrb_fixnum_value(RARRAY_LEN(members)), mrb_fixnum_value(RSTRUCT_LEN(s)));
    }
  }
  return members;
}
