
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_fatal_code_t ;


 int exit (int) ;

void jerry_port_fatal (jerry_fatal_code_t code)
{
  exit (1);
}
