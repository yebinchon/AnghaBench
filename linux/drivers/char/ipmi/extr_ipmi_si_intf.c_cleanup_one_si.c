
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {scalar_t__ intf; int link; } ;


 int ipmi_unregister_smi (scalar_t__) ;
 int kfree (struct smi_info*) ;
 int list_del (int *) ;

__attribute__((used)) static void cleanup_one_si(struct smi_info *smi_info)
{
 if (!smi_info)
  return;

 list_del(&smi_info->link);

 if (smi_info->intf)
  ipmi_unregister_smi(smi_info->intf);

 kfree(smi_info);
}
