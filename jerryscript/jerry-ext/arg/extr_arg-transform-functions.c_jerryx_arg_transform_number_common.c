
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
 int jerry_release_value (int ) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int jerry_value_to_number (int ) ;
 int jerryx_arg_js_iterator_pop (int *) ;

__attribute__((used)) static jerry_value_t
jerryx_arg_transform_number_common (jerryx_arg_js_iterator_t *js_arg_iter_p,
                                    double *number_p)
{
  jerry_value_t js_arg = jerryx_arg_js_iterator_pop (js_arg_iter_p);

  jerry_value_t to_number = jerry_value_to_number (js_arg);

  if (jerry_value_is_error (to_number))
  {
    jerry_release_value (to_number);

    return jerry_create_error (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "It can not be converted to a number.");
  }

  *number_p = jerry_get_number_value (to_number);
  jerry_release_value (to_number);

  return jerry_create_undefined ();
}
