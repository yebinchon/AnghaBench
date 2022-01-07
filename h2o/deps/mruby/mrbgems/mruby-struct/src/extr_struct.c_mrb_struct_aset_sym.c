
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef scalar_t__ mrb_sym ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 size_t RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 int * RSTRUCT_PTR (int ) ;
 int mrb_name_error (int *,scalar_t__,char*,int ) ;
 int mrb_struct_modify (int *,int ) ;
 int mrb_sym2str (int *,scalar_t__) ;
 scalar_t__ mrb_symbol (int const) ;
 int struct_members (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_aset_sym(mrb_state *mrb, mrb_value s, mrb_sym id, mrb_value val)
{
  mrb_value members, *ptr;
  const mrb_value *ptr_members;
  mrb_int i, len;

  members = struct_members(mrb, s);
  len = RARRAY_LEN(members);
  ptr = RSTRUCT_PTR(s);
  ptr_members = RARRAY_PTR(members);
  for (i=0; i<len; i++) {
    if (mrb_symbol(ptr_members[i]) == id) {
      mrb_struct_modify(mrb, s);
      ptr[i] = val;
      return val;
    }
  }
  mrb_name_error(mrb, id, "no member '%S' in struct", mrb_sym2str(mrb, id));
  return val;
}
