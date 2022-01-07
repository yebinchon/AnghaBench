
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int * _debug_context ;
 int mrb_debug_delete_break_all (int *,int *) ;
 int mrb_free (int *,int *) ;

void
mrb_debug_context_free(mrb_state *mrb)
{
  if (_debug_context) {
    mrb_debug_delete_break_all(mrb, _debug_context);
    mrb_free(mrb, _debug_context);
    _debug_context = ((void*)0);
  }
}
