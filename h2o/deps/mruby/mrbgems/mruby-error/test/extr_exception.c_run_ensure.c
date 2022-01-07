
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_ensure (int *,int ,int ,int ,int ) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int protect_cb ;

__attribute__((used)) static mrb_value
run_ensure(mrb_state *mrb, mrb_value self)
{
  mrb_value b, e;
  mrb_get_args(mrb, "oo", &b, &e);
  return mrb_ensure(mrb, protect_cb, b, protect_cb, e);
}
