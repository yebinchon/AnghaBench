
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {int port_vlan; } ;
struct switch_dev {int port_ops; } ;


 int printf (char*,int) ;
 int show_attrs (struct switch_dev*,int ,struct switch_val*) ;

__attribute__((used)) static void
show_port(struct switch_dev *dev, int port)
{
 struct switch_val val;

 printf("Port %d:\n", port);
 val.port_vlan = port;
 show_attrs(dev, dev->port_ops, &val);
}
