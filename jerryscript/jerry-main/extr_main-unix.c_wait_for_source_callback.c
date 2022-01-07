
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_PARSE_NO_OPTS ;
 int jerry_parse (int const*,size_t,int const*,size_t,int ) ;
 int jerry_release_value (int ) ;
 int jerry_run (int ) ;
 int jerry_value_is_error (int ) ;

__attribute__((used)) static jerry_value_t
wait_for_source_callback (const jerry_char_t *resource_name_p,
                          size_t resource_name_size,
                          const jerry_char_t *source_p,
                          size_t source_size,
                          void *user_p)
{
  (void) user_p;
  jerry_value_t ret_val = jerry_parse (resource_name_p,
                                       resource_name_size,
                                       source_p,
                                       source_size,
                                       JERRY_PARSE_NO_OPTS);

  if (!jerry_value_is_error (ret_val))
  {
    jerry_value_t func_val = ret_val;
    ret_val = jerry_run (func_val);
    jerry_release_value (func_val);
  }

  return ret_val;
}
