
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct smca_hwid {unsigned int hwid_mcatype; int count; } ;
struct TYPE_2__ {int id; scalar_t__ sysfs_id; struct smca_hwid* hwid; } ;


 unsigned int ARRAY_SIZE (struct smca_hwid*) ;
 int BIT (int) ;
 unsigned int HWID_MCATYPE (int,int) ;
 int MCI_IPID_HWID ;
 int MCI_IPID_MCATYPE ;
 int MSR_AMD64_SMCA_MCx_CONFIG (unsigned int) ;
 int MSR_AMD64_SMCA_MCx_IPID (unsigned int) ;
 int pr_warn (char*,unsigned int) ;
 int rdmsr_safe (int,int*,int*) ;
 scalar_t__ rdmsr_safe_on_cpu (unsigned int,int ,int*,int*) ;
 TYPE_1__* smca_banks ;
 struct smca_hwid* smca_hwid_mcatypes ;
 int smca_set_misc_banks_map (unsigned int,unsigned int) ;
 int wrmsr (int,int,int) ;

__attribute__((used)) static void smca_configure(unsigned int bank, unsigned int cpu)
{
 unsigned int i, hwid_mcatype;
 struct smca_hwid *s_hwid;
 u32 high, low;
 u32 smca_config = MSR_AMD64_SMCA_MCx_CONFIG(bank);


 if (!rdmsr_safe(smca_config, &low, &high)) {
  high |= BIT(0);
  if ((low & BIT(5)) && !((high >> 5) & 0x3))
   high |= BIT(5);

  wrmsr(smca_config, low, high);
 }

 smca_set_misc_banks_map(bank, cpu);


 if (smca_banks[bank].hwid)
  return;

 if (rdmsr_safe_on_cpu(cpu, MSR_AMD64_SMCA_MCx_IPID(bank), &low, &high)) {
  pr_warn("Failed to read MCA_IPID for bank %d\n", bank);
  return;
 }

 hwid_mcatype = HWID_MCATYPE(high & MCI_IPID_HWID,
        (high & MCI_IPID_MCATYPE) >> 16);

 for (i = 0; i < ARRAY_SIZE(smca_hwid_mcatypes); i++) {
  s_hwid = &smca_hwid_mcatypes[i];
  if (hwid_mcatype == s_hwid->hwid_mcatype) {
   smca_banks[bank].hwid = s_hwid;
   smca_banks[bank].id = low;
   smca_banks[bank].sysfs_id = s_hwid->count++;
   break;
  }
 }
}
