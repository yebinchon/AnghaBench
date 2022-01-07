
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_4__ {int interval_ratio; } ;
struct TYPE_5__ {TYPE_1__ gc; } ;
typedef TYPE_2__ mrb_state ;


 int mrb_fixnum_value (int ) ;

__attribute__((used)) static mrb_value
gc_interval_ratio_get(mrb_state *mrb, mrb_value obj)
{
  return mrb_fixnum_value(mrb->gc.interval_ratio);
}
