
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int compare (int ,int ,char*) ;
 int jerry_cleanup () ;
 int jerry_create_string (int const*) ;
 int jerry_get_array_length (int ) ;
 int jerry_get_property (int ,int ) ;
 int jerry_get_value_from_error (int ,int) ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 scalar_t__ jerry_value_is_array (int ) ;
 int jerry_value_is_error (int ) ;
 int jerry_value_is_object (int ) ;
 int run (char*,char const*) ;

__attribute__((used)) static void
test_large_line_count (void)
{
  jerry_init (JERRY_INIT_EMPTY);

  const char *source = ("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                        "g();\n");

  jerry_value_t error = run ("bad.js", source);

  TEST_ASSERT (jerry_value_is_error (error));

  error = jerry_get_value_from_error (error, 1);

  TEST_ASSERT (jerry_value_is_object (error));

  jerry_value_t name = jerry_create_string ((const jerry_char_t *) "stack");
  jerry_value_t backtrace = jerry_get_property (error, name);

  jerry_release_value (name);
  jerry_release_value (error);

  TEST_ASSERT (!jerry_value_is_error (backtrace)
               && jerry_value_is_array (backtrace));

  TEST_ASSERT (jerry_get_array_length (backtrace) == 1);

  compare (backtrace, 0, "bad.js:385");

  jerry_release_value (backtrace);

  jerry_cleanup ();
}
