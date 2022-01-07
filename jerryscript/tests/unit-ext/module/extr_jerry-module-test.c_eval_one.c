
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_PARSE_STRICT_MODE ;
 int assert_number (int ,double) ;
 int jerry_eval (int const*,int ,int ) ;
 int jerry_release_value (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
eval_one (const char *the_string, double expected_result)
{
  jerry_value_t js_eval_result = jerry_eval ((const jerry_char_t *) the_string,
                                             strlen (the_string),
                                             JERRY_PARSE_STRICT_MODE);
  assert_number (js_eval_result, expected_result);
  jerry_release_value (js_eval_result);
}
