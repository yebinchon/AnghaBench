
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dest; } ;
typedef TYPE_1__ jerryx_arg_t ;
typedef int jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_ERROR_TYPE ;
 int jerry_acquire_value (int ) ;
 int jerry_create_error (int ,int *) ;
 int jerry_create_undefined () ;
 int jerry_value_is_function (int ) ;
 int jerryx_arg_js_iterator_pop (int *) ;

jerry_value_t
jerryx_arg_transform_function (jerryx_arg_js_iterator_t *js_arg_iter_p,
                               const jerryx_arg_t *c_arg_p)
{
  jerry_value_t js_arg = jerryx_arg_js_iterator_pop (js_arg_iter_p);

  if (!jerry_value_is_function (js_arg))
  {
    return jerry_create_error (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "It is not a function.");
  }

  jerry_value_t *func_p = c_arg_p->dest;
  *func_p = jerry_acquire_value (js_arg);

  return jerry_create_undefined ();
}
