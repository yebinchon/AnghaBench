
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ GUEST_GDTR_BASE ;
 scalar_t__ GUEST_GDTR_LIMIT ;
 int pr_err (char*,char*,int ,int ) ;
 int vmcs_read32 (scalar_t__) ;
 int vmcs_readl (scalar_t__) ;

__attribute__((used)) static void vmx_dump_dtsel(char *name, uint32_t limit)
{
 pr_err("%s                           limit=0x%08x, base=0x%016lx\n",
        name, vmcs_read32(limit),
        vmcs_readl(limit + GUEST_GDTR_BASE - GUEST_GDTR_LIMIT));
}
