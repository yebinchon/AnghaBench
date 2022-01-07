
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_bat {unsigned long batu; int batl; } ;
typedef int phys_addr_t ;
typedef int pgprot_t ;


 struct ppc_bat** BATS ;
 int BAT_PHYS_ADDR (int ) ;
 unsigned long BPP_RX ;
 unsigned long BPP_XX ;
 int CPU_FTR_NEED_COHERENT ;
 unsigned long _PAGE_COHERENT ;
 scalar_t__ _PAGE_EXEC ;
 unsigned long _PAGE_USER ;
 int cpu_has_feature (int ) ;
 unsigned long pgprot_val (int ) ;

__attribute__((used)) static void setibat(int index, unsigned long virt, phys_addr_t phys,
      unsigned int size, pgprot_t prot)
{
 unsigned int bl = (size >> 17) - 1;
 int wimgxpp;
 struct ppc_bat *bat = BATS[index];
 unsigned long flags = pgprot_val(prot);

 if (!cpu_has_feature(CPU_FTR_NEED_COHERENT))
  flags &= ~_PAGE_COHERENT;

 wimgxpp = (flags & _PAGE_COHERENT) | (_PAGE_EXEC ? BPP_RX : BPP_XX);
 bat[0].batu = virt | (bl << 2) | 2;
 bat[0].batl = BAT_PHYS_ADDR(phys) | wimgxpp;
 if (flags & _PAGE_USER)
  bat[0].batu |= 1;
}
