
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef scalar_t__ jerry_length_t ;
typedef int jerry_gc_mode_t ;


 int JERRY_GC_PRESSURE_HIGH ;
 int JERRY_GC_PRESSURE_LOW ;
 int jerry_create_undefined () ;
 int jerry_gc (int ) ;
 scalar_t__ jerry_value_to_boolean (int const) ;

jerry_value_t
jerryx_handler_gc (const jerry_value_t func_obj_val,
                   const jerry_value_t this_p,
                   const jerry_value_t args_p[],
                   const jerry_length_t args_cnt)
{
  (void) func_obj_val;
  (void) this_p;

  jerry_gc_mode_t mode = ((args_cnt > 0 && jerry_value_to_boolean (args_p[0])) ? JERRY_GC_PRESSURE_HIGH
                                                                               : JERRY_GC_PRESSURE_LOW);

  jerry_gc (mode);
  return jerry_create_undefined ();
}
