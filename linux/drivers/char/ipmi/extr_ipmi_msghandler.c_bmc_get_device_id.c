
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi {int dummy; } ;
struct ipmi_device_id {int dummy; } ;
struct bmc_device {int dummy; } ;
typedef int guid_t ;


 int __bmc_get_device_id (struct ipmi_smi*,struct bmc_device*,struct ipmi_device_id*,int*,int *,int) ;

__attribute__((used)) static int bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
        struct ipmi_device_id *id,
        bool *guid_set, guid_t *guid)
{
 return __bmc_get_device_id(intf, bmc, id, guid_set, guid, -1);
}
