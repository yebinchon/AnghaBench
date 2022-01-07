
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_context_t ;


 int * current_context_p ;

void
jerry_port_default_set_current_context (jerry_context_t *context_p)
{
  current_context_p = context_p;
}
