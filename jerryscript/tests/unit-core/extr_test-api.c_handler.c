
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ jerry_value_t ;
typedef int jerry_size_t ;
typedef int jerry_length_t ;
typedef int jerry_char_t ;


 int TEST_ASSERT (int) ;
 scalar_t__ jerry_create_string (int *) ;
 int jerry_get_string_size (scalar_t__ const) ;
 int jerry_string_to_char_buffer (scalar_t__ const,int *,int) ;
 int jerry_value_is_boolean (scalar_t__ const) ;
 int jerry_value_is_string (scalar_t__ const) ;
 int printf (char*,unsigned int,unsigned int,void*,unsigned int) ;
 int strncmp (char*,char*,size_t) ;

__attribute__((used)) static jerry_value_t
handler (const jerry_value_t func_obj_val,
         const jerry_value_t this_val,
         const jerry_value_t args_p[],
         const jerry_length_t args_cnt)
{
  char buffer[32];
  jerry_size_t sz;

  printf ("ok %u %u %p %u\n",
          (unsigned int) func_obj_val, (unsigned int) this_val, (void *) args_p, (unsigned int) args_cnt);

  TEST_ASSERT (args_cnt == 2);

  TEST_ASSERT (jerry_value_is_string (args_p[0]));
  sz = jerry_get_string_size (args_p[0]);
  TEST_ASSERT (sz == 1);
  sz = jerry_string_to_char_buffer (args_p[0],
                                    (jerry_char_t *) buffer,
                                    sz);
  TEST_ASSERT (sz == 1);
  TEST_ASSERT (!strncmp (buffer, "1", (size_t) sz));

  TEST_ASSERT (jerry_value_is_boolean (args_p[1]));

  return jerry_create_string ((jerry_char_t *) "string from handler");
}
