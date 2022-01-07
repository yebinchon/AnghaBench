
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int backtrace_handler ;
 int compare (int ,int,char*) ;
 int jerry_cleanup () ;
 int jerry_create_external_function (int ) ;
 int jerry_create_string (int const*) ;
 int jerry_get_array_length (int ) ;
 int jerry_get_global_object () ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 scalar_t__ jerry_value_is_array (int ) ;
 int jerry_value_is_error (int ) ;
 int run (char*,char const*) ;

__attribute__((used)) static void
test_get_backtrace_api_call (void)
{
  jerry_init (JERRY_INIT_EMPTY);

  jerry_value_t global = jerry_get_global_object ();

  jerry_value_t func = jerry_create_external_function (backtrace_handler);
  jerry_value_t name = jerry_create_string ((const jerry_char_t *) "backtrace");
  jerry_value_t result = jerry_set_property (global, name, func);
  TEST_ASSERT (!jerry_value_is_error (result));

  jerry_release_value (result);
  jerry_release_value (name);
  jerry_release_value (func);

  jerry_release_value (global);

  const char *source = ("function f() {\n"
                        "  return backtrace(0);\n"
                        "}\n"
                        "\n"
                        "function g() {\n"
                        "  return f();\n"
                        "}\n"
                        "\n"
                        "function h() {\n"
                        "  return g();\n"
                        "}\n"
                        "\n"
                        "h();\n");

  jerry_value_t backtrace = run ("something.js", source);

  TEST_ASSERT (!jerry_value_is_error (backtrace)
               && jerry_value_is_array (backtrace));

  TEST_ASSERT (jerry_get_array_length (backtrace) == 4);

  compare (backtrace, 0, "something.js:2");
  compare (backtrace, 1, "something.js:6");
  compare (backtrace, 2, "something.js:10");
  compare (backtrace, 3, "something.js:13");

  jerry_release_value (backtrace);



  source = ("function f() {\n"
            "  return backtrace(2);\n"
            "}\n"
            "\n"
            "function g() {\n"
            "  return f();\n"
            "}\n"
            "\n"
            "function h() {\n"
            "  return g();\n"
            "}\n"
            "\n"
            "h();\n");

  backtrace = run ("something_else.js", source);

  TEST_ASSERT (!jerry_value_is_error (backtrace)
               && jerry_value_is_array (backtrace));

  TEST_ASSERT (jerry_get_array_length (backtrace) == 2);

  compare (backtrace, 0, "something_else.js:2");
  compare (backtrace, 1, "something_else.js:6");

  jerry_release_value (backtrace);

  jerry_cleanup ();
}
