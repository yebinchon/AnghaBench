
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* dest; } ;
typedef TYPE_1__ jerryx_arg_t ;
typedef int jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;


 int jerry_create_undefined () ;
 int jerry_value_to_boolean (int ) ;
 int jerryx_arg_js_iterator_pop (int *) ;

jerry_value_t
jerryx_arg_transform_boolean (jerryx_arg_js_iterator_t *js_arg_iter_p,
                              const jerryx_arg_t *c_arg_p)
{
  jerry_value_t js_arg = jerryx_arg_js_iterator_pop (js_arg_iter_p);

  bool to_boolean = jerry_value_to_boolean (js_arg);

  bool *dest = c_arg_p->dest;
  *dest = to_boolean;

  return jerry_create_undefined ();
}
