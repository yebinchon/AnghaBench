
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_arg_t ;
typedef int jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_ERROR_TYPE ;
 int jerry_create_error (int ,int *) ;
 int jerry_release_value (int ) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int jerry_value_to_string (int ) ;
 int jerryx_arg_js_iterator_pop (int *) ;
 int jerryx_arg_string_to_buffer_common_routine (int ,int const*,int) ;

__attribute__((used)) static jerry_value_t
jerryx_arg_transform_string_common (jerryx_arg_js_iterator_t *js_arg_iter_p,
                                    const jerryx_arg_t *c_arg_p,
                                    bool is_utf8)
{
  jerry_value_t js_arg = jerryx_arg_js_iterator_pop (js_arg_iter_p);

  jerry_value_t to_string = jerry_value_to_string (js_arg);

  if (jerry_value_is_error (to_string))
  {
    jerry_release_value (to_string);

    return jerry_create_error (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "It can not be converted to a string.");
  }

  jerry_value_t ret = jerryx_arg_string_to_buffer_common_routine (to_string, c_arg_p, is_utf8);
  jerry_release_value (to_string);

  return ret;
}
