
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_PARSE_NO_OPTS ;
 int jerry_call_function (int ,int ,int *,int) ;
 int jerry_create_undefined () ;
 int jerry_eval (int *,int ,int ) ;
 int jerry_get_value_from_error (int ,int) ;
 int jerry_release_value (int ) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int print_function ;
 int printf (char*) ;
 int strlen (char*) ;

__attribute__((used)) static int shell_cmd_handler (char *source_buffer)
{
  jerry_value_t ret_val;

  ret_val = jerry_eval ((jerry_char_t *) source_buffer,
    strlen (source_buffer),
    JERRY_PARSE_NO_OPTS);

  if (jerry_value_is_error (ret_val))
  {



    printf ("Error executing statement: ");


    ret_val = jerry_get_value_from_error (ret_val, 1);
  }

  if (!jerry_value_is_error (print_function))
  {
    jerry_value_t ret_val_print = jerry_call_function (print_function,
      jerry_create_undefined (),
      &ret_val,
      1);
    jerry_release_value (ret_val_print);
  }

  jerry_release_value (ret_val);

  return 0;
}
