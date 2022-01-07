
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const* const* const* const* jerry_value_t ;
typedef int const* const* const* const* const* jerry_length_t ;
struct TYPE_3__ {int x; } ;


 int JERRY_UNUSED (int const* const* const* const* const* const) ;
 int TEST_ASSERT (int ) ;
 int const* const* const* const* jerry_create_boolean (int) ;
 int jerry_set_object_native_pointer (int const* const* const* const* const,TYPE_1__*,int *) ;
 int jerry_value_is_object (int const* const* const* const* const) ;
 TYPE_1__ my_thing_a ;
 int thing_a_info ;

__attribute__((used)) static jerry_value_t
create_object_a_handler (const jerry_value_t func_obj_val,
                         const jerry_value_t this_val,
                         const jerry_value_t args_p[],
                         const jerry_length_t args_cnt)
{
  JERRY_UNUSED (func_obj_val);
  JERRY_UNUSED (args_p);
  JERRY_UNUSED (args_cnt);

  TEST_ASSERT (jerry_value_is_object (this_val));

  my_thing_a.x = 1;
  jerry_set_object_native_pointer (this_val,
                                   &my_thing_a,
                                   &thing_a_info);

  return jerry_create_boolean (1);
}
