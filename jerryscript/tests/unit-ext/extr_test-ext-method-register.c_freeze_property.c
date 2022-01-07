
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jerry_value_t ;
struct TYPE_5__ {int is_configurable_defined; int is_configurable; } ;
typedef TYPE_1__ jerry_property_descriptor_t ;
typedef int jerry_char_t ;


 int TEST_ASSERT (int ) ;
 int jerry_create_string (int const*) ;
 int jerry_define_own_property (int ,int ,TYPE_1__*) ;
 int jerry_free_property_descriptor_fields (TYPE_1__*) ;
 int jerry_init_property_descriptor_fields (TYPE_1__*) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_boolean (int ) ;

__attribute__((used)) static void
freeze_property (jerry_value_t target_obj,
                 const char *target_prop)
{

  jerry_property_descriptor_t prop_desc;
  jerry_init_property_descriptor_fields (&prop_desc);
  prop_desc.is_configurable_defined = 1;
  prop_desc.is_configurable = 0;

  jerry_value_t prop_name = jerry_create_string ((const jerry_char_t *) target_prop);
  jerry_value_t return_value = jerry_define_own_property (target_obj, prop_name, &prop_desc);
  TEST_ASSERT (jerry_value_is_boolean (return_value));
  jerry_release_value (return_value);
  jerry_release_value (prop_name);

  jerry_free_property_descriptor_fields (&prop_desc);
}
