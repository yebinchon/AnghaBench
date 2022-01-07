
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef char jerry_char_t ;
typedef int is_equal_src ;


 int JERRY_PARSE_NO_OPTS ;
 int TEST_ASSERT (int) ;
 int jerry_call_function (int ,int ,int *,int) ;
 int jerry_create_undefined () ;
 int jerry_eval (char const*,int,int ) ;
 int jerry_get_boolean_value (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_boolean (int ) ;
 int jerry_value_is_error (int ) ;

__attribute__((used)) static bool
strict_equals (jerry_value_t a,
               jerry_value_t b)
{
  const jerry_char_t is_equal_src[] = "var isEqual = function(a, b) { return (a === b); }; isEqual";
  jerry_value_t is_equal_fn_val = jerry_eval (is_equal_src, sizeof (is_equal_src) - 1, JERRY_PARSE_NO_OPTS);
  TEST_ASSERT (!jerry_value_is_error (is_equal_fn_val));
  jerry_value_t args[2] = {a, b};
  jerry_value_t res = jerry_call_function (is_equal_fn_val, jerry_create_undefined (), args, 2);
  TEST_ASSERT (!jerry_value_is_error (res));
  TEST_ASSERT (jerry_value_is_boolean (res));
  bool is_strict_equal = jerry_get_boolean_value (res);
  jerry_release_value (res);
  jerry_release_value (is_equal_fn_val);
  return is_strict_equal;
}
