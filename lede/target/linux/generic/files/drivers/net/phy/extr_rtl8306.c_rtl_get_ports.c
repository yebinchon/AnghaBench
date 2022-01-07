
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct switch_port* ports; } ;
struct switch_val {size_t len; TYPE_1__ value; int port_vlan; } ;
struct switch_port {unsigned int id; int flags; } ;
struct switch_dev {unsigned int cpu_port; } ;


 int PORTMASK ;
 unsigned int RTL8306_NUM_PORTS ;
 int RTL_PORT_REG (unsigned int,int ) ;
 int RTL_VLAN_REG (int ,int ) ;
 int SWITCH_PORT_FLAG_TAGGED ;
 int TAG_INSERT ;
 int rtl_get (struct switch_dev*,int ) ;

__attribute__((used)) static int
rtl_get_ports(struct switch_dev *dev, struct switch_val *val)
{
 unsigned int i, mask;

 mask = rtl_get(dev, RTL_VLAN_REG(val->port_vlan, PORTMASK));
 for (i = 0; i < RTL8306_NUM_PORTS; i++) {
  struct switch_port *port;

  if (!(mask & (1 << i)))
   continue;

  port = &val->value.ports[val->len];
  port->id = i;
  if (rtl_get(dev, RTL_PORT_REG(i, TAG_INSERT)) == 2 || i == dev->cpu_port)
   port->flags = (1 << SWITCH_PORT_FLAG_TAGGED);
  val->len++;
 }

 return 0;
}
