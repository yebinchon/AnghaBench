
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef size_t jerry_size_t ;
typedef scalar_t__ jerry_char_t ;


 scalar_t__ balloc (size_t,int *) ;
 int bfree (scalar_t__*) ;
 size_t jerry_get_utf8_string_size (int ) ;
 int jerry_get_value_from_error (int ,int) ;
 int jerry_release_value (int ) ;
 size_t jerry_string_to_utf8_char_buffer (int ,scalar_t__*,size_t) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int jerry_value_to_string (int ) ;
 int printk (char*,scalar_t__*) ;

void jerry_resolve_error (jerry_value_t ret_value)
{
  if (jerry_value_is_error (ret_value))
  {
    ret_value = jerry_get_value_from_error (ret_value, 1);
    jerry_value_t err_str_val = jerry_value_to_string (ret_value);
    jerry_size_t err_str_size = jerry_get_utf8_string_size (err_str_val);
    jerry_char_t *err_str_buf = (jerry_char_t *) balloc (err_str_size, ((void*)0));
    jerry_size_t sz = jerry_string_to_utf8_char_buffer (err_str_val, err_str_buf, err_str_size);
    err_str_buf[sz] = 0;
    printk ("Script Error: unhandled exception: %s\n", err_str_buf);
    bfree(err_str_buf);
    jerry_release_value (err_str_val);
  }
}
