
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ GUEST_ES_AR_BYTES ;
 scalar_t__ GUEST_ES_BASE ;
 scalar_t__ GUEST_ES_LIMIT ;
 scalar_t__ GUEST_ES_SELECTOR ;
 int pr_err (char*,char*,int ,int ,int ,int ) ;
 int vmcs_read16 (scalar_t__) ;
 int vmcs_read32 (scalar_t__) ;
 int vmcs_readl (scalar_t__) ;

__attribute__((used)) static void vmx_dump_sel(char *name, uint32_t sel)
{
 pr_err("%s sel=0x%04x, attr=0x%05x, limit=0x%08x, base=0x%016lx\n",
        name, vmcs_read16(sel),
        vmcs_read32(sel + GUEST_ES_AR_BYTES - GUEST_ES_SELECTOR),
        vmcs_read32(sel + GUEST_ES_LIMIT - GUEST_ES_SELECTOR),
        vmcs_readl(sel + GUEST_ES_BASE - GUEST_ES_SELECTOR));
}
