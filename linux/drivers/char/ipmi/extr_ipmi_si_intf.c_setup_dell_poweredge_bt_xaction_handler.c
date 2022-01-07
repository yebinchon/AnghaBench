
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ si_type; } ;
struct ipmi_device_id {scalar_t__ manufacturer_id; } ;
struct smi_info {TYPE_1__ io; struct ipmi_device_id device_id; } ;


 scalar_t__ DELL_IANA_MFR_ID ;
 scalar_t__ SI_BT ;
 int dell_poweredge_bt_xaction_notifier ;
 int register_xaction_notifier (int *) ;

__attribute__((used)) static void
setup_dell_poweredge_bt_xaction_handler(struct smi_info *smi_info)
{
 struct ipmi_device_id *id = &smi_info->device_id;
 if (id->manufacturer_id == DELL_IANA_MFR_ID &&
     smi_info->io.si_type == SI_BT)
  register_xaction_notifier(&dell_poweredge_bt_xaction_notifier);
}
