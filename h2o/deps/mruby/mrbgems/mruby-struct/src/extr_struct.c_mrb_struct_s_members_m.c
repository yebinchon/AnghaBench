
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int RARRAY_LEN (int ) ;
 int mrb_ary_new_capa (int *,int ) ;
 int mrb_ary_replace (int *,int ,int ) ;
 int mrb_class_ptr (int ) ;
 int struct_s_members (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_s_members_m(mrb_state *mrb, mrb_value klass)
{
  mrb_value members, ary;

  members = struct_s_members(mrb, mrb_class_ptr(klass));
  ary = mrb_ary_new_capa(mrb, RARRAY_LEN(members));
  mrb_ary_replace(mrb, ary, members);
  return ary;
}
