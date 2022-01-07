
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_external_handler_t ;
typedef int jerry_char_t ;


 int JERRY_LOG_LEVEL_WARNING ;
 int jerry_get_value_from_error (int ,int) ;
 int jerry_port_log (int ,char*,char const*) ;
 int jerry_release_value (int ) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int jerryx_handler_register_global (int const*,int ) ;
 int print_unhandled_exception (int ) ;

__attribute__((used)) static void
register_js_function (const char *name_p,
                      jerry_external_handler_t handler_p)
{
  jerry_value_t result_val = jerryx_handler_register_global ((const jerry_char_t *) name_p, handler_p);

  if (jerry_value_is_error (result_val))
  {
    jerry_port_log (JERRY_LOG_LEVEL_WARNING, "Warning: failed to register '%s' method.", name_p);
    result_val = jerry_get_value_from_error (result_val, 1);
    print_unhandled_exception (result_val);
  }

  jerry_release_value (result_val);
}
