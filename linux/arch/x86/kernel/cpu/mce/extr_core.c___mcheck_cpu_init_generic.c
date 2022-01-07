
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int mce_banks_t ;
typedef enum mcp_flags { ____Placeholder_mcp_flags } mcp_flags ;
struct TYPE_2__ {int bootlog; } ;


 int MAX_NR_BANKS ;
 int MCG_CTL_P ;
 int MCP_DONTLOG ;
 int MCP_UC ;
 int MSR_IA32_MCG_CAP ;
 int MSR_IA32_MCG_CTL ;
 int X86_CR4_MCE ;
 int bitmap_fill (int ,int ) ;
 int cr4_set_bits (int ) ;
 int machine_check_poll (int,int *) ;
 TYPE_1__ mca_cfg ;
 int rdmsrl (int ,int) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void __mcheck_cpu_init_generic(void)
{
 enum mcp_flags m_fl = 0;
 mce_banks_t all_banks;
 u64 cap;

 if (!mca_cfg.bootlog)
  m_fl = MCP_DONTLOG;




 bitmap_fill(all_banks, MAX_NR_BANKS);
 machine_check_poll(MCP_UC | m_fl, &all_banks);

 cr4_set_bits(X86_CR4_MCE);

 rdmsrl(MSR_IA32_MCG_CAP, cap);
 if (cap & MCG_CTL_P)
  wrmsr(MSR_IA32_MCG_CTL, 0xffffffff, 0xffffffff);
}
