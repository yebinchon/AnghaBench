
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_get_args (int *,char*,int *) ;
 int mrb_value_to_string (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_json_pretty_generate(mrb_state *mrb, mrb_value self) {
  mrb_value obj;
  mrb_get_args(mrb, "o", &obj);
  return mrb_value_to_string(mrb, obj, 0);
}
