
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ jerry_fatal_code_t ;


 scalar_t__ ERR_OUT_OF_MEMORY ;
 int abort () ;
 int exit (int) ;

void jerry_port_fatal (jerry_fatal_code_t code)
{
  if (code != 0
      && code != ERR_OUT_OF_MEMORY)
  {
    abort ();
  }

  exit ((int) code);
}
