
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_size_t ;


 int JERRY_VLA (int ,scalar_t__,int ) ;
 int jerry_char_t ;
 int jerry_create_number (int) ;
 int jerry_get_utf8_string_size (int const) ;
 int jerry_string_to_utf8_char_buffer (int const,scalar_t__,int ) ;
 scalar_t__ name_string ;
 int strncmp (char*,char*,int ) ;

__attribute__((used)) static bool
resolve_differently_handled_module (const jerry_value_t name,
                                    jerry_value_t *result)
{
  jerry_size_t name_size = jerry_get_utf8_string_size (name);
  JERRY_VLA (jerry_char_t, name_string, name_size);
  jerry_string_to_utf8_char_buffer (name, name_string, name_size);

  if (!strncmp ((char *) name_string, "differently-handled-module", name_size))
  {
    (*result) = jerry_create_number (29);
    return 1;
  }
  return 0;
}
