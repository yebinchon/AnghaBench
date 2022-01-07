
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int jerry_create_string (int *) ;
 int jerry_get_global_object () ;
 int jerry_get_property (int ,int ) ;
 int jerry_init (int ) ;
 scalar_t__ jerry_port_get_current_time () ;
 int jerry_release_value (int ) ;
 int print_function ;
 int srand (unsigned int) ;

void jerry_start ()
{
  srand ((unsigned) jerry_port_get_current_time ());
  jerry_init (JERRY_INIT_EMPTY);
  jerry_value_t global_obj_val = jerry_get_global_object ();
  jerry_value_t print_func_name_val = jerry_create_string ((jerry_char_t *) "print");
  print_function = jerry_get_property (global_obj_val, print_func_name_val);
  jerry_release_value (print_func_name_val);
  jerry_release_value (global_obj_val);
}
