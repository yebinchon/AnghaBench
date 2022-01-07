
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ globals; } ;
typedef TYPE_1__ mrb_state ;


 int iv_free (TYPE_1__*,scalar_t__) ;

void
mrb_gc_free_gv(mrb_state *mrb)
{
  if (mrb->globals)
    iv_free(mrb, mrb->globals);
}
