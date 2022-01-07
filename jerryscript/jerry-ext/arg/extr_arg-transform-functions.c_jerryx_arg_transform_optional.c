
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* jerryx_arg_transform_func_t ) (int *,int const*) ;
typedef int jerryx_arg_t ;
typedef int jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;


 scalar_t__ jerry_value_is_undefined (int ) ;
 int jerryx_arg_js_iterator_peek (int *) ;
 int jerryx_arg_js_iterator_pop (int *) ;

jerry_value_t
jerryx_arg_transform_optional (jerryx_arg_js_iterator_t *js_arg_iter_p,
                               const jerryx_arg_t *c_arg_p,
                               jerryx_arg_transform_func_t func)
{
  jerry_value_t js_arg = jerryx_arg_js_iterator_peek (js_arg_iter_p);

  if (jerry_value_is_undefined (js_arg))
  {
    return jerryx_arg_js_iterator_pop (js_arg_iter_p);
  }

  return func (js_arg_iter_p, c_arg_p);
}
