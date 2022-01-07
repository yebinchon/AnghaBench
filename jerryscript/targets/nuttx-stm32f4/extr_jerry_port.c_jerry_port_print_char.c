
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char) ;

void
jerry_port_print_char (char c)
{
  printf ("%c", c);
}
