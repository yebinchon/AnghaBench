
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_smi {int num_ports; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable_port ) (struct rtl8366_smi*,int,int) ;} ;


 int stub1 (struct rtl8366_smi*,int,int) ;

int rtl8366_enable_all_ports(struct rtl8366_smi *smi, int enable)
{
 int port;
 int err;

 for (port = 0; port < smi->num_ports; port++) {
  err = smi->ops->enable_port(smi, port, enable);
  if (err)
   return err;
 }

 return 0;
}
