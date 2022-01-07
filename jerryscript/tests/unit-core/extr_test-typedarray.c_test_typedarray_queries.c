
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int bytes_per_element; int element_count; int typedarray_type; int * constructor_name; } ;
typedef TYPE_1__ test_entry_t ;
typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int TEST_ASSERT (int) ;
 int jerry_construct_object (int ,int *,int) ;
 int jerry_create_number (int ) ;
 int jerry_create_string (int const*) ;
 int jerry_create_typedarray (int ,int ) ;
 int jerry_get_global_object () ;
 int jerry_get_property (int ,int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int test_typedarray_info (int ,int ,int ,int ) ;

__attribute__((used)) static void
test_typedarray_queries (test_entry_t test_entries[])
{
  jerry_value_t global_obj_val = jerry_get_global_object ();

  for (uint32_t i = 0; test_entries[i].constructor_name != ((void*)0); i++)
  {

    {
      jerry_value_t prop_name = jerry_create_string ((const jerry_char_t *) test_entries[i].constructor_name);
      jerry_value_t prop_value = jerry_get_property (global_obj_val, prop_name);
      TEST_ASSERT (!jerry_value_is_error (prop_value));
      jerry_value_t length_arg = jerry_create_number (test_entries[i].element_count);

      jerry_value_t typedarray = jerry_construct_object (prop_value, &length_arg, 1);

      jerry_release_value (prop_name);
      jerry_release_value (prop_value);
      jerry_release_value (length_arg);

      test_typedarray_info (typedarray,
                            test_entries[i].typedarray_type,
                            test_entries[i].element_count,
                            test_entries[i].bytes_per_element);
      jerry_release_value (typedarray);
    }


    {
      jerry_value_t typedarray = jerry_create_typedarray (test_entries[i].typedarray_type,
                                                          test_entries[i].element_count);
      test_typedarray_info (typedarray,
                            test_entries[i].typedarray_type,
                            test_entries[i].element_count,
                            test_entries[i].bytes_per_element);
      jerry_release_value (typedarray);
    }
  }

  jerry_release_value (global_obj_val);
}
