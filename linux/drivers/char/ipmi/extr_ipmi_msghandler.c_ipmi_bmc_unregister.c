
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi {int bmc_reg_mutex; } ;


 int __ipmi_bmc_unregister (struct ipmi_smi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ipmi_bmc_unregister(struct ipmi_smi *intf)
{
 mutex_lock(&intf->bmc_reg_mutex);
 __ipmi_bmc_unregister(intf);
 mutex_unlock(&intf->bmc_reg_mutex);
}
