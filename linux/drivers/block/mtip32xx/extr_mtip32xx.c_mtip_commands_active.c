
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtip_port {int * s_active; TYPE_1__* dd; } ;
struct TYPE_2__ {unsigned int slot_groups; } ;


 unsigned int readl (int ) ;

__attribute__((used)) static bool mtip_commands_active(struct mtip_port *port)
{
 unsigned int active;
 unsigned int n;





 active = readl(port->s_active[0]) & 0xFFFFFFFE;
 for (n = 1; n < port->dd->slot_groups; n++)
  active |= readl(port->s_active[n]);

 return active != 0;
}
