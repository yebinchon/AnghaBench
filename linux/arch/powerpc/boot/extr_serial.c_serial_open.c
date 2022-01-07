
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_console_data {int (* open ) () ;} ;
struct TYPE_2__ {struct serial_console_data* data; } ;


 TYPE_1__ console_ops ;
 int stub1 () ;

__attribute__((used)) static int serial_open(void)
{
 struct serial_console_data *scdp = console_ops.data;
 return scdp->open();
}
