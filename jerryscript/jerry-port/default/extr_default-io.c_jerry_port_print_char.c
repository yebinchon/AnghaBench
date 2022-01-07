
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_size_t ;
typedef int jerry_char_t ;


 scalar_t__ DEBUG_BUFFER_SIZE ;
 char* debug_buffer ;
 scalar_t__ debug_buffer_index ;
 int jerry_debugger_send_output (int *,int ) ;
 int putchar (char) ;

void
jerry_port_print_char (char c)
{
  putchar (c);
}
