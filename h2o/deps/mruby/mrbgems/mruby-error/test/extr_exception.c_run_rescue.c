
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_rescue (int *,int ,int ,int ,int ) ;
 int protect_cb ;

__attribute__((used)) static mrb_value
run_rescue(mrb_state *mrb, mrb_value self)
{
  mrb_value b, r;
  mrb_get_args(mrb, "oo", &b, &r);
  return mrb_rescue(mrb, protect_cb, b, protect_cb, r);
}
