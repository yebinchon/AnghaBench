
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_pat_mem_phys_mem_location {int dimm_slot; } ;


 unsigned long PDT_ADDR_PERM_ERR ;
 unsigned long PDT_ADDR_PHYS_MASK ;
 unsigned long PDT_ADDR_SINGLE_ERR ;
 scalar_t__ is_pdc_pat () ;
 int pdc_pat_mem_get_dimm_phys_location (struct pdc_pat_mem_phys_mem_location*,unsigned long) ;
 int pr_warn (char*,unsigned long,char*,char*,char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void report_mem_err(unsigned long pde)
{
 struct pdc_pat_mem_phys_mem_location loc;
 unsigned long addr;
 char dimm_txt[32];

 addr = pde & PDT_ADDR_PHYS_MASK;


 if (is_pdc_pat()) {
  pdc_pat_mem_get_dimm_phys_location(&loc, addr);
  sprintf(dimm_txt, "DIMM slot %02x, ", loc.dimm_slot);
 } else
  dimm_txt[0] = 0;

 pr_warn("PDT: BAD MEMORY at 0x%08lx, %s%s%s-bit error.\n",
  addr, dimm_txt,
  pde & PDT_ADDR_PERM_ERR ? "permanent ":"",
  pde & PDT_ADDR_SINGLE_ERR ? "single":"multi");
}
