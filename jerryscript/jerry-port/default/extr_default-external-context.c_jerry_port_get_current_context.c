
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_context_t ;


 int * current_context_p ;

jerry_context_t *
jerry_port_get_current_context (void)
{
  return current_context_p;
}
