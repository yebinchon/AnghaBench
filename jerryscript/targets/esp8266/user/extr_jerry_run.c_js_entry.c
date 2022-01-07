
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JERRY_INIT_EMPTY ;
 int jerry_init (int ) ;
 scalar_t__ jerry_port_get_current_time () ;
 int js_register_functions () ;
 int srand (unsigned int) ;

void js_entry ()
{
  srand ((unsigned) jerry_port_get_current_time ());

  jerry_init (JERRY_INIT_EMPTY);
  js_register_functions ();
}
