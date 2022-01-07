
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_debug_context ;


 int * _debug_context ;

void
mrb_debug_context_set(mrb_debug_context *dbg)
{
  _debug_context = dbg;
}
