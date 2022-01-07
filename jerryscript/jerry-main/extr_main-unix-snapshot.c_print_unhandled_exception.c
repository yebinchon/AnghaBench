
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_size_t ;
typedef scalar_t__ jerry_char_t ;


 int JERRY_LOG_LEVEL_ERROR ;
 int assert (int) ;
 int jerry_get_utf8_string_size (int ) ;
 int jerry_port_log (int ,char*,...) ;
 int jerry_release_value (int ) ;
 int jerry_string_to_utf8_char_buffer (int ,scalar_t__*,int) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int jerry_value_to_string (int ) ;

__attribute__((used)) static void
print_unhandled_exception (jerry_value_t error_value)
{
  assert (!jerry_value_is_error (error_value));

  jerry_value_t err_str_val = jerry_value_to_string (error_value);

  if (jerry_value_is_error (err_str_val))
  {

    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Snapshot error: [value cannot be converted to string]\n");
    jerry_release_value (err_str_val);
    return;
  }

  jerry_size_t err_str_size = jerry_get_utf8_string_size (err_str_val);

  if (err_str_size >= 256)
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Snapshot error: [value cannot be converted to string]\n");
    jerry_release_value (err_str_val);
    return;
  }

  jerry_char_t err_str_buf[256];
  jerry_size_t string_end = jerry_string_to_utf8_char_buffer (err_str_val, err_str_buf, err_str_size);
  assert (string_end == err_str_size);
  err_str_buf[string_end] = 0;

  jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Snapshot error: %s\n", (char *) err_str_buf);
  jerry_release_value (err_str_val);
}
