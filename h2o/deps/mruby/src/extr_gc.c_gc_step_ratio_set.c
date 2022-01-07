
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_5__ {int step_ratio; } ;
struct TYPE_6__ {TYPE_1__ gc; } ;
typedef TYPE_2__ mrb_state ;
typedef scalar_t__ mrb_int ;


 int mrb_get_args (TYPE_2__*,char*,scalar_t__*) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
gc_step_ratio_set(mrb_state *mrb, mrb_value obj)
{
  mrb_int ratio;

  mrb_get_args(mrb, "i", &ratio);
  mrb->gc.step_ratio = (int)ratio;
  return mrb_nil_value();
}
