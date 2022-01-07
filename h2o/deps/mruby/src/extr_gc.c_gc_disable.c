
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_4__ {int disabled; } ;
struct TYPE_5__ {TYPE_1__ gc; } ;
typedef TYPE_2__ mrb_state ;
typedef int mrb_bool ;


 int TRUE ;
 int mrb_bool_value (int ) ;

__attribute__((used)) static mrb_value
gc_disable(mrb_state *mrb, mrb_value obj)
{
  mrb_bool old = mrb->gc.disabled;

  mrb->gc.disabled = TRUE;

  return mrb_bool_value(old);
}
