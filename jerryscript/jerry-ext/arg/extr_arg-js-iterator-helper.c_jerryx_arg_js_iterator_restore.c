
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ js_arg_idx; int * js_arg_p; } ;
typedef TYPE_1__ jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;


 int jerry_create_undefined () ;

jerry_value_t
jerryx_arg_js_iterator_restore (jerryx_arg_js_iterator_t *js_arg_iter_p)
{
  if (js_arg_iter_p->js_arg_idx == 0)
  {
    return jerry_create_undefined ();
  }

  --js_arg_iter_p->js_arg_idx;
  --js_arg_iter_p->js_arg_p;

  return *js_arg_iter_p->js_arg_p;
}
