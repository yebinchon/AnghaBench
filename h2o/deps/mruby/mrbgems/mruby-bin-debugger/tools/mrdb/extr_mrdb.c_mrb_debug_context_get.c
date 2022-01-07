
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int mrb_debug_context ;


 int * _debug_context ;
 int * mrb_debug_context_new (int *) ;

mrb_debug_context*
mrb_debug_context_get(mrb_state *mrb)
{
  if (!_debug_context) {
    _debug_context = mrb_debug_context_new(mrb);
  }
  return _debug_context;
}
