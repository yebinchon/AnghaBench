
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int jerryx_register_result ;
struct TYPE_3__ {int value; int * name; } ;
typedef TYPE_1__ jerryx_property_entry ;
typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRYX_SET_PROPERTIES_RESULT (int ,int) ;
 int jerry_create_string_from_utf8 (int const*) ;
 int jerry_create_undefined () ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int const,int ,int ) ;
 int jerry_value_is_boolean (int ) ;

jerryx_register_result
jerryx_set_properties (const jerry_value_t target_object,
                       const jerryx_property_entry entries[])
{

  uint32_t idx = 0;
  for (; ((entries + idx) != ((void*)0)) && (entries[idx].name != ((void*)0)); idx++)
  {
    const jerryx_property_entry *entry = &entries[idx];

    jerry_value_t prop_name = jerry_create_string_from_utf8 ((const jerry_char_t *) entry->name);
    jerry_value_t result = jerry_set_property (target_object, prop_name, entry->value);

    jerry_release_value (prop_name);





    if (!jerry_value_is_boolean (result))
    {
      return ((jerryx_register_result) { result, idx });
    }

    jerry_release_value (entry->value);
    jerry_release_value (result);
  }

  return ((jerryx_register_result) { jerry_create_undefined (), idx });

}
