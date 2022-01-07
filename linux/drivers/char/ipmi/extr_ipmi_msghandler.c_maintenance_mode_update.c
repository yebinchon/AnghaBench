
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_smi {int maintenance_mode_enable; int send_info; TYPE_1__* handlers; } ;
struct TYPE_2__ {int (* set_maintenance_mode ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void maintenance_mode_update(struct ipmi_smi *intf)
{
 if (intf->handlers->set_maintenance_mode)
  intf->handlers->set_maintenance_mode(
   intf->send_info, intf->maintenance_mode_enable);
}
