
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int jerry_value_t ;
struct TYPE_6__ {int is_value_defined; int is_writable_defined; int is_writable; int is_enumerable_defined; int is_enumerable; int is_configurable_defined; int is_configurable; int is_get_defined; int is_set_defined; int setter; int getter; int value; } ;
typedef TYPE_1__ jerry_property_descriptor_t ;
typedef int jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int jerry_acquire_value (int ) ;
 int jerry_cleanup () ;
 int jerry_create_string (int const*) ;
 int jerry_define_own_property (int ,int ,TYPE_1__*) ;
 int jerry_free_property_descriptor_fields (TYPE_1__*) ;
 int jerry_get_boolean_value (int ) ;
 int jerry_get_global_object () ;
 int jerry_get_own_property_descriptor (int ,int ,TYPE_1__*) ;
 int jerry_init (int ) ;
 int jerry_init_property_descriptor_fields (TYPE_1__*) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_boolean (int ) ;
 int jerry_value_is_error (int ) ;
 int jerry_value_is_string (int ) ;
 int jerry_value_is_undefined (int ) ;

int
main (void)
{
  TEST_INIT ();

  jerry_init (JERRY_INIT_EMPTY);


  jerry_property_descriptor_t prop_desc;
  jerry_init_property_descriptor_fields (&prop_desc);
  TEST_ASSERT (prop_desc.is_value_defined == 0);
  TEST_ASSERT (jerry_value_is_undefined (prop_desc.value));
  TEST_ASSERT (prop_desc.is_writable_defined == 0);
  TEST_ASSERT (prop_desc.is_writable == 0);
  TEST_ASSERT (prop_desc.is_enumerable_defined == 0);
  TEST_ASSERT (prop_desc.is_enumerable == 0);
  TEST_ASSERT (prop_desc.is_configurable_defined == 0);
  TEST_ASSERT (prop_desc.is_configurable == 0);
  TEST_ASSERT (prop_desc.is_get_defined == 0);
  TEST_ASSERT (jerry_value_is_undefined (prop_desc.getter));
  TEST_ASSERT (prop_desc.is_set_defined == 0);
  TEST_ASSERT (jerry_value_is_undefined (prop_desc.setter));


  jerry_value_t global_obj_val = jerry_get_global_object ();
  jerry_value_t prop_name = jerry_create_string ((const jerry_char_t *) "my_defined_property");
  prop_desc.is_value_defined = 1;
  prop_desc.value = jerry_acquire_value (prop_name);
  jerry_value_t res = jerry_define_own_property (global_obj_val, prop_name, &prop_desc);
  TEST_ASSERT (!jerry_value_is_error (res));
  TEST_ASSERT (jerry_value_is_boolean (res));
  TEST_ASSERT (jerry_get_boolean_value (res));
  jerry_release_value (res);
  jerry_free_property_descriptor_fields (&prop_desc);


  bool is_ok = jerry_get_own_property_descriptor (global_obj_val, prop_name, &prop_desc);
  TEST_ASSERT (is_ok);
  TEST_ASSERT (prop_desc.is_value_defined == 1);
  TEST_ASSERT (jerry_value_is_string (prop_desc.value));
  TEST_ASSERT (prop_desc.is_writable == 0);
  TEST_ASSERT (prop_desc.is_enumerable == 0);
  TEST_ASSERT (prop_desc.is_configurable == 0);
  TEST_ASSERT (prop_desc.is_get_defined == 0);
  TEST_ASSERT (jerry_value_is_undefined (prop_desc.getter));
  TEST_ASSERT (prop_desc.is_set_defined == 0);
  TEST_ASSERT (jerry_value_is_undefined (prop_desc.setter));
  jerry_release_value (prop_name);
  jerry_free_property_descriptor_fields (&prop_desc);

  jerry_release_value (global_obj_val);
  jerry_cleanup ();

  return 0;
}
