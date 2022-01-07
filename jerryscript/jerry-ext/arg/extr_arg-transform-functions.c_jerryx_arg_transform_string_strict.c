
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_arg_t ;
typedef int jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;


 int jerryx_arg_transform_string_strict_common (int *,int const*,int) ;

jerry_value_t
jerryx_arg_transform_string_strict (jerryx_arg_js_iterator_t *js_arg_iter_p,
                                    const jerryx_arg_t *c_arg_p)
{
  return jerryx_arg_transform_string_strict_common (js_arg_iter_p, c_arg_p, 0);
}
