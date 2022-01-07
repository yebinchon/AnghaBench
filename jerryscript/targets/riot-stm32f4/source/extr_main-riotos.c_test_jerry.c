
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script ;
typedef int jerry_value_t ;
typedef char jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int JERRY_PARSE_NO_OPTS ;
 int JERRY_STANDALONE_EXIT_CODE_FAIL ;
 int JERRY_STANDALONE_EXIT_CODE_OK ;
 int jerry_cleanup () ;
 int jerry_create_undefined () ;
 int jerry_init (int ) ;
 int jerry_parse (int *,int ,char const*,int,int ) ;
 int jerry_release_value (int ) ;
 int jerry_run (int ) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int jerryx_handler_print ;
 int printf (char*,...) ;
 int register_js_function (char*,int ) ;

int test_jerry (int argc, char **argv)
{

  (void) argc;
  (void) argv;

  jerry_value_t ret_value = jerry_create_undefined ();

  const jerry_char_t script[] = "print ('Hello, World!');";
  printf ("This test run the following script code: [%s]\n\n", script);


  jerry_init (JERRY_INIT_EMPTY);


  register_js_function ("print", jerryx_handler_print);


  ret_value = jerry_parse (((void*)0), 0, script, sizeof (script) - 1, JERRY_PARSE_NO_OPTS);

  if (!jerry_value_is_error (ret_value))
  {

    ret_value = jerry_run (ret_value);
  }

  int ret_code = JERRY_STANDALONE_EXIT_CODE_OK;

  if (jerry_value_is_error (ret_value))
  {
    printf ("Script Error!");

    ret_code = JERRY_STANDALONE_EXIT_CODE_FAIL;
  }

  jerry_release_value (ret_value);


  jerry_cleanup ();

  return ret_code;

}
