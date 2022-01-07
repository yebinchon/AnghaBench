
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 size_t RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 int * RSTRUCT_PTR (int ) ;
 int mrb_hash_new_capa (int *,size_t) ;
 int mrb_hash_set (int *,int ,int ,int ) ;
 int struct_members (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_to_h(mrb_state *mrb, mrb_value self)
{
  mrb_value members, ret;
  mrb_int i;

  members = struct_members(mrb, self);
  ret = mrb_hash_new_capa(mrb, RARRAY_LEN(members));

  for (i = 0; i < RARRAY_LEN(members); ++i) {
    mrb_hash_set(mrb, ret, RARRAY_PTR(members)[i], RSTRUCT_PTR(self)[i]);
  }

  return ret;
}
