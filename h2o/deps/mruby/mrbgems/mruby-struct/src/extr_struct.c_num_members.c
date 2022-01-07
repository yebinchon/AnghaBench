
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int E_TYPE_ERROR ;
 int RARRAY_LEN (int ) ;
 int mrb_array_p (int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_obj_value (struct RClass*) ;
 int mrb_raise (int *,int ,char*) ;
 int struct_ivar_get (int *,int ,int ) ;

__attribute__((used)) static mrb_int
num_members(mrb_state *mrb, struct RClass *klass)
{
  mrb_value members;

  members = struct_ivar_get(mrb, mrb_obj_value(klass), mrb_intern_lit(mrb, "__members__"));
  if (!mrb_array_p(members)) {
    mrb_raise(mrb, E_TYPE_ERROR, "broken members");
  }
  return RARRAY_LEN(members);
}
