
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write; int open; } ;


 TYPE_1__ console_ops ;
 int of_console_open ;
 int of_console_write ;

void of_console_init(void)
{
 console_ops.open = of_console_open;
 console_ops.write = of_console_write;
}
