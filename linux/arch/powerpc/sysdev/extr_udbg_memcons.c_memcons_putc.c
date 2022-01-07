
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* output_pos; char* output_end; char* output_start; } ;


 TYPE_1__ memcons ;
 int wmb () ;

void memcons_putc(char c)
{
 char *new_output_pos;

 *memcons.output_pos = c;
 wmb();
 new_output_pos = memcons.output_pos + 1;
 if (new_output_pos >= memcons.output_end)
  new_output_pos = memcons.output_start;

 memcons.output_pos = new_output_pos;
}
