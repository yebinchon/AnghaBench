
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int jerry_value_t ;
typedef scalar_t__ jerry_typedarray_type_t ;
typedef scalar_t__ jerry_length_t ;


 int TEST_ASSERT (int) ;
 int jerry_get_typedarray_buffer (int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ jerry_get_typedarray_length (int ) ;
 scalar_t__ jerry_get_typedarray_type (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_arraybuffer (int ) ;
 int jerry_value_is_error (int ) ;
 int jerry_value_is_typedarray (int ) ;

__attribute__((used)) static void
test_typedarray_info (jerry_value_t typedarray,
                      jerry_typedarray_type_t typedarray_type,
                      jerry_length_t element_count,
                      jerry_length_t bytes_per_element)
{
  TEST_ASSERT (!jerry_value_is_error (typedarray));
  TEST_ASSERT (jerry_value_is_typedarray (typedarray));
  TEST_ASSERT (jerry_get_typedarray_type (typedarray) == typedarray_type);
  TEST_ASSERT (jerry_get_typedarray_length (typedarray) == element_count);

  jerry_length_t byte_length = (uint32_t) -1;
  jerry_length_t byte_offset = (uint32_t) -1;
  jerry_value_t arraybuffer = jerry_get_typedarray_buffer (typedarray, &byte_offset, &byte_length);
  TEST_ASSERT (jerry_value_is_arraybuffer (arraybuffer));

  TEST_ASSERT (byte_length == element_count * bytes_per_element);
  TEST_ASSERT (byte_offset == 0);

  jerry_release_value (arraybuffer);
}
