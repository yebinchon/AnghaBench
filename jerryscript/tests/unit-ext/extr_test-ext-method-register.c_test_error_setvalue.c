
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int ) ;
 int freeze_property (int ,char const*) ;
 int jerry_cleanup () ;
 int jerry_create_object () ;
 int jerry_get_global_object () ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int jerryx_set_property_str (int ,char const*,int ) ;

__attribute__((used)) static void
test_error_setvalue (void)
{
  jerry_init (JERRY_INIT_EMPTY);

  const char *target_prop = "test_err";
  jerry_value_t global_obj = jerry_get_global_object ();
  freeze_property (global_obj, target_prop);

  jerry_value_t new_object = jerry_create_object ();
  jerry_value_t set_result = jerryx_set_property_str (global_obj, target_prop, new_object);
  TEST_ASSERT (jerry_value_is_error (set_result));

  jerry_release_value (set_result);
  jerry_release_value (new_object);
  jerry_release_value (global_obj);

  jerry_cleanup ();
}
