
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_BIN_OP_STRICT_EQUAL ;
 int JERRY_FEATURE_LINE_INFO ;
 int JERRY_INIT_EMPTY ;
 int JERRY_LOG_LEVEL_ERROR ;
 int JERRY_PARSE_NO_OPTS ;
 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int jerry_binary_operation (int ,int ,int ) ;
 int jerry_cleanup () ;
 int jerry_create_external_function (int ) ;
 int jerry_create_string (int const*) ;
 int jerry_get_global_object () ;
 int jerry_get_resource_name (int ) ;
 int jerry_init (int ) ;
 int jerry_is_feature_enabled (int ) ;
 int jerry_parse (int const*,int ,int const*,int ,int ) ;
 int jerry_port_log (int ,char*) ;
 int jerry_release_value (int ) ;
 int jerry_run (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 int jerry_value_is_error (int ) ;
 int jerry_value_is_object (int ) ;
 int resource_name_handler ;
 int strlen (char const*) ;

int
main (void)
{
  TEST_INIT ();

  if (!jerry_is_feature_enabled (JERRY_FEATURE_LINE_INFO))
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Line info support is disabled!\n");
    return 0;
  }

  jerry_init (JERRY_INIT_EMPTY);

  jerry_value_t global = jerry_get_global_object ();


  {
    jerry_value_t func = jerry_create_external_function (resource_name_handler);
    jerry_value_t name = jerry_create_string ((const jerry_char_t *) "resourceName");
    jerry_value_t result = jerry_set_property (global, name, func);
    jerry_release_value (result);
    jerry_release_value (name);
    jerry_release_value (func);
  }

  jerry_release_value (global);

  const char *source_1 = ("function f1 () {\n"
                          "  if (resourceName() !== 'demo1.js') return false; \n"
                          "  if (resourceName(f1) !== 'demo1.js') return false; \n"
                          "  if (resourceName(5) !== '<anonymous>') return false; \n"
                          "  return f1; \n"
                          "} \n"
                          "f1();");
  const char *resource_1 = "demo1.js";

  jerry_value_t program = jerry_parse ((const jerry_char_t *) resource_1,
                                       strlen (resource_1),
                                       (const jerry_char_t *) source_1,
                                       strlen (source_1),
                                       JERRY_PARSE_NO_OPTS);
  TEST_ASSERT (!jerry_value_is_error (program));

  jerry_value_t run_result = jerry_run (program);
  TEST_ASSERT (!jerry_value_is_error (run_result));
  TEST_ASSERT (jerry_value_is_object (run_result));

  jerry_value_t resource_value = jerry_get_resource_name (run_result);
  jerry_value_t resource1_name_value = jerry_create_string ((const jerry_char_t *) resource_1);
  TEST_ASSERT (jerry_binary_operation (JERRY_BIN_OP_STRICT_EQUAL, resource_value, resource1_name_value));
  jerry_release_value (resource1_name_value);
  jerry_release_value (resource_value);

  jerry_release_value (run_result);
  jerry_release_value (program);

  const char *source_2 = ("function f2 () { \n"
                          "  if (resourceName() !== 'demo2.js') return false; \n"
                          "  if (resourceName(f2) !== 'demo2.js') return false; \n"
                          "  if (resourceName(f1) !== 'demo1.js') return false; \n"
                          "  if (resourceName(Object.prototype) !== '<anonymous>') return false; \n"
                          "  if (resourceName(Function) !== '<anonymous>') return false; \n"
                          "  return f2; \n"
                          "} \n"
                          "f2(); \n");
  const char *resource_2 = "demo2.js";


  program = jerry_parse ((const jerry_char_t *) resource_2,
                         strlen (resource_2),
                         (const jerry_char_t *) source_2,
                         strlen (source_2),
                         JERRY_PARSE_NO_OPTS);
  TEST_ASSERT (!jerry_value_is_error (program));

  run_result = jerry_run (program);
  TEST_ASSERT (!jerry_value_is_error (run_result));
  TEST_ASSERT (jerry_value_is_object (run_result));

  resource_value = jerry_get_resource_name (run_result);
  jerry_value_t resource2_name_value = jerry_create_string ((const jerry_char_t *) resource_2);
  TEST_ASSERT (jerry_binary_operation (JERRY_BIN_OP_STRICT_EQUAL, resource_value, resource2_name_value));
  jerry_release_value (resource2_name_value);
  jerry_release_value (resource_value);

  jerry_release_value (run_result);
  jerry_release_value (program);

  jerry_cleanup ();

  return 0;
}
