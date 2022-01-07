
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int GETVERSION ;
 int VMWARE_CMD (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ VMWARE_HYPERVISOR_MAGIC ;

__attribute__((used)) static inline int __vmware_platform(void)
{
 uint32_t eax, ebx, ecx, edx;
 VMWARE_CMD(GETVERSION, eax, ebx, ecx, edx);
 return eax != (uint32_t)-1 && ebx == VMWARE_HYPERVISOR_MAGIC;
}
