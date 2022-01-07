
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* input_pos; char* input_end; char* input_start; } ;


 TYPE_1__ memcons ;
 int wmb () ;

int memcons_getc_poll(void)
{
 char c;
 char *new_input_pos;

 if (*memcons.input_pos) {
  c = *memcons.input_pos;

  new_input_pos = memcons.input_pos + 1;
  if (new_input_pos >= memcons.input_end)
   new_input_pos = memcons.input_start;
  else if (*new_input_pos == '\0')
   new_input_pos = memcons.input_start;

  *memcons.input_pos = '\0';
  wmb();
  memcons.input_pos = new_input_pos;
  return c;
 }

 return -1;
}
