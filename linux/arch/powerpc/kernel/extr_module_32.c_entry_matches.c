
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_plt_entry {int* jump; } ;
typedef int Elf32_Addr ;


 int PPC_HA (int ) ;
 int PPC_INST_ADDI ;
 int PPC_INST_ADDIS ;
 int PPC_LO (int ) ;
 int R12 ;
 int __PPC_RA (int ) ;
 int __PPC_RT (int ) ;

__attribute__((used)) static inline int entry_matches(struct ppc_plt_entry *entry, Elf32_Addr val)
{
 if (entry->jump[0] != (PPC_INST_ADDIS | __PPC_RT(R12) | PPC_HA(val)))
  return 0;
 if (entry->jump[1] != (PPC_INST_ADDI | __PPC_RT(R12) | __PPC_RA(R12) |
          PPC_LO(val)))
  return 0;
 return 1;
}
