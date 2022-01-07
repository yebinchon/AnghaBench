
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int jerry_value_t ;
typedef size_t jerry_size_t ;
typedef int jerry_char_t ;
typedef int buf ;


 int TEST_ASSERT (int) ;
 int jerry_get_property_by_index (int ,int ) ;
 size_t jerry_get_string_size (int ) ;
 int jerry_release_value (int ) ;
 size_t jerry_string_to_char_buffer (int ,int *,size_t) ;
 int jerry_value_is_error (int ) ;
 scalar_t__ jerry_value_is_string (int ) ;
 scalar_t__ memcmp (int *,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
compare (jerry_value_t array,
         uint32_t index,
         const char *str)
{
  jerry_char_t buf[64];

  size_t len = strlen (str);

  TEST_ASSERT (len < sizeof (buf));

  jerry_value_t value = jerry_get_property_by_index (array, index);

  TEST_ASSERT (!jerry_value_is_error (value)
               && jerry_value_is_string (value));

  TEST_ASSERT (jerry_get_string_size (value) == len);

  jerry_size_t str_len = jerry_string_to_char_buffer (value, buf, (jerry_size_t) len);
  TEST_ASSERT (str_len == len);

  jerry_release_value (value);

  TEST_ASSERT (memcmp (buf, str, len) == 0);
}
