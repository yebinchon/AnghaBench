
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerryx_arg_js_iterator_t ;
typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_ERROR_TYPE ;
 int jerry_create_error (int ,int *) ;
 int jerry_create_undefined () ;
 double jerry_get_number_value (int ) ;
 int jerry_value_is_number (int ) ;
 int jerryx_arg_js_iterator_pop (int *) ;

__attribute__((used)) static jerry_value_t
jerryx_arg_transform_number_strict_common (jerryx_arg_js_iterator_t *js_arg_iter_p,
                                           double *number_p)
{
  jerry_value_t js_arg = jerryx_arg_js_iterator_pop (js_arg_iter_p);

  if (!jerry_value_is_number (js_arg))
  {
    return jerry_create_error (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "It is not a number.");
  }

  *number_p = jerry_get_number_value (js_arg);

  return jerry_create_undefined ();
}
