
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_get_args (int *,char*,int *) ;
 int set_backtrace (int *,int ,int ) ;

__attribute__((used)) static mrb_value
exc_set_backtrace(mrb_state *mrb, mrb_value exc)
{
  mrb_value backtrace;

  mrb_get_args(mrb, "o", &backtrace);
  set_backtrace(mrb, exc, backtrace);
  return backtrace;
}
