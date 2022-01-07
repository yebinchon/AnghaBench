
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int types ;
typedef int jerry_value_t ;
typedef int jerry_typedarray_type_t ;


 scalar_t__ JERRY_ERROR_TYPE ;
 int TEST_ASSERT (int) ;
 int jerry_create_arraybuffer_external (scalar_t__ const,int *,int *) ;
 int jerry_create_typedarray_for_arraybuffer (int ,int ) ;
 int jerry_create_typedarray_for_arraybuffer_sz (int ,int ,int ,int) ;
 int jerry_detach_arraybuffer (int ) ;
 scalar_t__ const jerry_get_arraybuffer_byte_length (int ) ;
 int jerry_get_boolean_value (int ) ;
 scalar_t__ jerry_get_error_type (int ) ;
 int jerry_is_arraybuffer_detachable (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_arraybuffer (int ) ;
 int jerry_value_is_error (int ) ;

__attribute__((used)) static void
test_detached_arraybuffer (void)
{
  static jerry_typedarray_type_t types[] =
  {
    129,
    128,
    132,
    131,
    134,
    130,
    133,
    136,
    135,
  };


  {
    uint8_t buf[1];
    const uint32_t length = 1;
    jerry_value_t arraybuffer = jerry_create_arraybuffer_external (length, buf, ((void*)0));
    TEST_ASSERT (!jerry_value_is_error (arraybuffer));
    TEST_ASSERT (jerry_value_is_arraybuffer (arraybuffer));
    TEST_ASSERT (jerry_get_arraybuffer_byte_length (arraybuffer) == length);

    jerry_value_t is_detachable = jerry_is_arraybuffer_detachable (arraybuffer);
    TEST_ASSERT (!jerry_value_is_error (is_detachable));
    TEST_ASSERT (jerry_get_boolean_value (is_detachable));
    jerry_release_value (is_detachable);

    jerry_value_t res = jerry_detach_arraybuffer (arraybuffer);
    TEST_ASSERT (!jerry_value_is_error (res));
    jerry_release_value (res);

    for (size_t idx = 0; idx < (sizeof (types) / sizeof (types[0])); idx++)
    {
      jerry_value_t typedarray = jerry_create_typedarray_for_arraybuffer_sz (types[idx], arraybuffer, 0, 4);
      TEST_ASSERT (jerry_value_is_error (typedarray));
      TEST_ASSERT (jerry_get_error_type (typedarray) == JERRY_ERROR_TYPE);
      jerry_release_value (typedarray);
    }

    jerry_release_value (arraybuffer);
  }


  {
    uint8_t buf[1];
    const uint32_t length = 1;
    jerry_value_t arraybuffer = jerry_create_arraybuffer_external (length, buf, ((void*)0));
    TEST_ASSERT (!jerry_value_is_error (arraybuffer));
    TEST_ASSERT (jerry_value_is_arraybuffer (arraybuffer));
    TEST_ASSERT (jerry_get_arraybuffer_byte_length (arraybuffer) == length);

    jerry_value_t is_detachable = jerry_is_arraybuffer_detachable (arraybuffer);
    TEST_ASSERT (!jerry_value_is_error (is_detachable));
    TEST_ASSERT (jerry_get_boolean_value (is_detachable));
    jerry_release_value (is_detachable);

    jerry_value_t res = jerry_detach_arraybuffer (arraybuffer);
    TEST_ASSERT (!jerry_value_is_error (res));
    jerry_release_value (res);

    for (size_t idx = 0; idx < (sizeof (types) / sizeof (types[0])); idx++)
    {
      jerry_value_t typedarray = jerry_create_typedarray_for_arraybuffer (types[idx], arraybuffer);
      TEST_ASSERT (jerry_value_is_error (typedarray));
      TEST_ASSERT (jerry_get_error_type (typedarray) == JERRY_ERROR_TYPE);
      jerry_release_value (typedarray);
    }

    jerry_release_value (arraybuffer);
  }
}
