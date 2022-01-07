
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int TEST_ASSERT (int) ;
 int jerry_call_function (int ,int ,int *,int) ;
 int jerry_construct_object (int ,int *,int ) ;
 int jerry_create_undefined () ;
 int jerry_get_boolean_value (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_boolean (int ) ;
 int jerry_value_is_error (int ) ;

__attribute__((used)) static void
test_instanceof (jerry_value_t instanceof,
                 jerry_value_t constructor)
{
  jerry_value_t instance = jerry_construct_object (constructor, ((void*)0), 0);
  jerry_value_t args[2] =
  {
    instance, constructor
  };

  jerry_value_t undefined = jerry_create_undefined ();
  jerry_value_t result = jerry_call_function (instanceof, undefined, args, 2);
  jerry_release_value (undefined);

  TEST_ASSERT (!jerry_value_is_error (result));
  TEST_ASSERT (jerry_value_is_boolean (result));

  TEST_ASSERT (jerry_get_boolean_value (result));

  jerry_release_value (instance);
  jerry_release_value (result);
}
