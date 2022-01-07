
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;


 int jerry_acquire_value (int const) ;
 scalar_t__ jerry_get_boolean_value (int ) ;
 int jerry_has_property (int const,int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;

__attribute__((used)) static bool
find_test_object_by_property (const jerry_value_t candidate,
                              void *context_p)
{
  jerry_value_t *args_p = (jerry_value_t *) context_p;
  jerry_value_t result = jerry_has_property (candidate, args_p[0]);

  bool has_property = (!jerry_value_is_error (result) && jerry_get_boolean_value (result));


  if (has_property)
  {
    args_p[1] = jerry_acquire_value (candidate);
  }

  jerry_release_value (result);


  return !has_property;
}
