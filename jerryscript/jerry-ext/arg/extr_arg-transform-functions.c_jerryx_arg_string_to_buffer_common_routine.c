
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extra_info; scalar_t__ dest; } ;
typedef TYPE_1__ jerryx_arg_t ;
typedef int jerry_value_t ;
typedef size_t jerry_size_t ;
typedef scalar_t__ jerry_length_t ;
typedef char jerry_char_t ;


 int JERRY_ERROR_TYPE ;
 int jerry_create_error (int ,char*) ;
 int jerry_create_undefined () ;
 scalar_t__ jerry_get_string_length (int ) ;
 scalar_t__ jerry_get_utf8_string_length (int ) ;
 size_t jerry_string_to_char_buffer (int ,char*,size_t) ;
 size_t jerry_string_to_utf8_char_buffer (int ,char*,size_t) ;

__attribute__((used)) static jerry_value_t
jerryx_arg_string_to_buffer_common_routine (jerry_value_t js_arg,
                                            const jerryx_arg_t *c_arg_p,
                                            bool is_utf8)
{
  jerry_char_t *target_p = (jerry_char_t *) c_arg_p->dest;
  jerry_size_t target_buf_size = (jerry_size_t) c_arg_p->extra_info;
  jerry_size_t size;
  jerry_length_t len;

  if (!is_utf8)
  {
    size = jerry_string_to_char_buffer (js_arg,
                                        target_p,
                                        target_buf_size);
    len = jerry_get_string_length (js_arg);
  }
  else
  {
    size = jerry_string_to_utf8_char_buffer (js_arg,
                                             target_p,
                                             target_buf_size);
    len = jerry_get_utf8_string_length (js_arg);
  }

  if ((size == target_buf_size) || (size == 0 && len != 0))
  {
    return jerry_create_error (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "Buffer size is not large enough.");
  }

  target_p[size] = '\0';

  return jerry_create_undefined ();
}
