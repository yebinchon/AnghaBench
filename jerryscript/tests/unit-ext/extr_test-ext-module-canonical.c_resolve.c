
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_size_t ;


 int ACTUAL_NAME ;
 int JERRY_VLA (int ,scalar_t__*,int) ;
 int jerry_char_t ;
 int jerry_create_object () ;
 int jerry_get_string_size (int const) ;
 int jerry_string_to_char_buffer (int const,scalar_t__*,int) ;
 scalar_t__* name_string ;
 int strcmp (char*,int ) ;

__attribute__((used)) static bool
resolve (const jerry_value_t canonical_name, jerry_value_t *result)
{
  jerry_size_t name_size = jerry_get_string_size (canonical_name);
  JERRY_VLA (jerry_char_t, name_string, name_size + 1);
  jerry_string_to_char_buffer (canonical_name, name_string, name_size);
  name_string[name_size] = 0;

  if (!strcmp ((char *) name_string, ACTUAL_NAME))
  {
    *result = jerry_create_object ();
    return 1;
  }
  return 0;
}
