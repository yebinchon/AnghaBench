
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_PARSE_NO_OPTS ;
 int TEST_ASSERT (int) ;
 int jerry_parse (int const*,int ,int const*,int ,int ) ;
 int jerry_release_value (int ) ;
 int jerry_run (int ) ;
 int jerry_value_is_error (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static jerry_value_t
run (const char *resource_name_p,
     const char *source_p)
{
  jerry_value_t code = jerry_parse ((const jerry_char_t *) resource_name_p,
                                    strlen (resource_name_p),
                                    (const jerry_char_t *) source_p,
                                    strlen (source_p),
                                    JERRY_PARSE_NO_OPTS);
  TEST_ASSERT (!jerry_value_is_error (code));

  jerry_value_t result = jerry_run (code);
  jerry_release_value (code);

  return result;
}
