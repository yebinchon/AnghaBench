
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 int NOEX_PUBLIC ;
 int TRUE ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_obj_methods (int *,int ,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_obj_public_methods(mrb_state *mrb, mrb_value self)
{
  mrb_bool recur = TRUE;
  mrb_get_args(mrb, "|b", &recur);
  return mrb_obj_methods(mrb, recur, self, NOEX_PUBLIC);
}
