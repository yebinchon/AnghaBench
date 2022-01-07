
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef size_t jerry_size_t ;
typedef int jerry_char_t ;


 int TEST_ASSERT (int) ;
 int jerry_get_boolean_value (int const) ;
 double jerry_get_number_value (int const) ;
 size_t jerry_string_to_char_buffer (int const,int *,int) ;
 int jerry_value_is_boolean (int const) ;
 int jerry_value_is_number (int const) ;
 int jerry_value_is_object (int const) ;
 int jerry_value_is_string (int const) ;
 int strncmp (char const*,char*,size_t) ;

__attribute__((used)) static bool
foreach (const jerry_value_t name,
         const jerry_value_t value,
         void *user_data)
{
  char str_buf_p[128];
  jerry_size_t sz = jerry_string_to_char_buffer (name, (jerry_char_t *) str_buf_p, 128);
  str_buf_p[sz] = '\0';

  TEST_ASSERT (!strncmp ((const char *) user_data, "user_data", 9));
  TEST_ASSERT (sz > 0);

  if (!strncmp (str_buf_p, "alpha", (size_t) sz))
  {
    TEST_ASSERT (jerry_value_is_number (value));
    TEST_ASSERT (jerry_get_number_value (value) == 32.0);
    return 1;
  }
  else if (!strncmp (str_buf_p, "bravo", (size_t) sz))
  {
    TEST_ASSERT (jerry_value_is_boolean (value));
    TEST_ASSERT (jerry_get_boolean_value (value) == 0);
    return 1;
  }
  else if (!strncmp (str_buf_p, "charlie", (size_t) sz))
  {
    TEST_ASSERT (jerry_value_is_object (value));
    return 1;
  }
  else if (!strncmp (str_buf_p, "delta", (size_t) sz))
  {
    TEST_ASSERT (jerry_value_is_number (value));
    TEST_ASSERT (jerry_get_number_value (value) == 123.45);
    return 1;
  }
  else if (!strncmp (str_buf_p, "echo", (size_t) sz))
  {
    TEST_ASSERT (jerry_value_is_string (value));
    jerry_size_t echo_sz = jerry_string_to_char_buffer (value,
                                                        (jerry_char_t *) str_buf_p,
                                                        128);
    str_buf_p[echo_sz] = '\0';
    TEST_ASSERT (!strncmp (str_buf_p, "foobar", (size_t) echo_sz));
    return 1;
  }

  TEST_ASSERT (0);
  return 0;


}
