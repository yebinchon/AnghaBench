
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* jerry_value_t ;
typedef size_t jerry_size_t ;
typedef int jerry_char_t ;


 int JERRY_UNUSED (void*) ;
 int TEST_ASSERT (int) ;
 size_t jerry_string_to_char_buffer (void* const,int *,int) ;
 int strncmp (char*,char*,size_t) ;

__attribute__((used)) static bool
foreach_exception (const jerry_value_t name,
                   const jerry_value_t value,
                   void *user_data)
{
  JERRY_UNUSED (value);
  JERRY_UNUSED (user_data);
  char str_buf_p[128];
  jerry_size_t sz = jerry_string_to_char_buffer (name, (jerry_char_t *) str_buf_p, 128);
  str_buf_p[sz] = '\0';

  if (!strncmp (str_buf_p, "foxtrot", (size_t) sz))
  {
    TEST_ASSERT (0);
  }

  return 1;
}
