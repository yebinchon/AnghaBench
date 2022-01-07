
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ registered; int result; } ;
typedef TYPE_1__ jerryx_register_result ;
typedef int jerryx_property_entry ;
typedef int jerry_value_t ;


 int JERRYX_PROPERTY_FUNCTION (char const*,int ) ;
 int JERRYX_PROPERTY_LIST_END () ;
 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int freeze_property (int ,char const*) ;
 int jerry_cleanup () ;
 int jerry_create_object () ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int jerryx_release_property_entry (int *,TYPE_1__) ;
 TYPE_1__ jerryx_set_properties (int ,int *) ;
 int method_hello ;

__attribute__((used)) static void
test_error_single_function (void)
{
  jerry_init (JERRY_INIT_EMPTY);

  const char *target_prop = "test_err";
  jerry_value_t target_object = jerry_create_object ();
  freeze_property (target_object, target_prop);

  jerryx_property_entry methods[] =
  {
    JERRYX_PROPERTY_FUNCTION (target_prop, method_hello),
    JERRYX_PROPERTY_LIST_END (),
  };

  jerryx_register_result register_result = jerryx_set_properties (target_object, methods);

  TEST_ASSERT (register_result.registered == 0);
  TEST_ASSERT (jerry_value_is_error (register_result.result));
  jerryx_release_property_entry (methods, register_result);
  jerry_release_value (register_result.result);

  jerry_release_value (target_object);

  jerry_cleanup ();
}
