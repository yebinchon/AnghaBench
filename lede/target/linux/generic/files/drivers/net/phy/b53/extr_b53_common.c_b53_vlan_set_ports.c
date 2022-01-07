
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct switch_port* ports; } ;
struct switch_val {size_t port_vlan; int len; TYPE_1__ value; } ;
struct switch_port {size_t id; int flags; } ;
struct switch_dev {int dummy; } ;
struct b53_vlan {int members; int untag; } ;
struct b53_device {int enabled_ports; TYPE_2__* ports; int allow_vid_4095; struct b53_vlan* vlans; } ;
struct TYPE_4__ {int pvid; } ;


 int BIT (size_t) ;
 int EINVAL ;
 size_t SWITCH_PORT_FLAG_TAGGED ;
 int is5325 (struct b53_device*) ;
 int is5365 (struct b53_device*) ;
 struct b53_device* sw_to_b53 (struct switch_dev*) ;

__attribute__((used)) static int b53_vlan_set_ports(struct switch_dev *dev, struct switch_val *val)
{
 struct b53_device *priv = sw_to_b53(dev);
 struct switch_port *port;
 struct b53_vlan *vlan = &priv->vlans[val->port_vlan];
 int i;


 if (val->port_vlan == 0 && !is5325(priv) && !is5365(priv))
  return -EINVAL;


 if (val->port_vlan == 4095 && !priv->allow_vid_4095)
  return -EINVAL;

 port = &val->value.ports[0];
 vlan->members = 0;
 vlan->untag = 0;
 for (i = 0; i < val->len; i++, port++) {
  vlan->members |= BIT(port->id);

  if (!(port->flags & BIT(SWITCH_PORT_FLAG_TAGGED))) {
   vlan->untag |= BIT(port->id);
   priv->ports[port->id].pvid = val->port_vlan;
  };
 }


 vlan->members &= priv->enabled_ports;
 vlan->untag &= priv->enabled_ports;

 return 0;
}
