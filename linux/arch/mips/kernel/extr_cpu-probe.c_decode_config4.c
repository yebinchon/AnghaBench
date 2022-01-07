
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {unsigned int tlbsize; unsigned int tlbsizevtlb; int tlbsizeftlbsets; unsigned int tlbsizeftlbways; unsigned int kscratch_mask; int options; } ;


 unsigned int MIPS_CONF4_AE ;
 unsigned int MIPS_CONF4_FTLBPAGESIZE ;
 unsigned int MIPS_CONF4_FTLBPAGESIZE_SHIFT ;
 unsigned int MIPS_CONF4_FTLBSETS ;
 unsigned int MIPS_CONF4_FTLBSETS_SHIFT ;
 unsigned int MIPS_CONF4_FTLBWAYS ;
 unsigned int MIPS_CONF4_FTLBWAYS_SHIFT ;
 unsigned int MIPS_CONF4_IE ;
 unsigned int MIPS_CONF4_KSCREXIST ;
 unsigned int MIPS_CONF4_KSCREXIST_SHIFT ;
 unsigned int MIPS_CONF4_MMUEXTDEF ;



 unsigned int MIPS_CONF4_MMUSIZEEXT ;
 unsigned int MIPS_CONF4_VFTLBPAGESIZE ;
 unsigned int MIPS_CONF4_VTLBSIZEEXT ;
 unsigned int MIPS_CONF4_VTLBSIZEEXT_SHIFT ;
 unsigned int MIPS_CONF_M ;
 int MIPS_CPU_TLBINV ;
 unsigned long MIPS_ENTRYHI_ASID ;
 unsigned long MIPS_ENTRYHI_ASIDX ;
 int PAGE_SIZE ;
 int WARN_ON (int) ;
 int back_to_back_c0_hazard () ;
 unsigned long cpu_asid_mask (struct cpuinfo_mips*) ;
 scalar_t__ cpu_has_ftlb ;
 int cpu_has_mips_r6 ;
 scalar_t__ cpu_has_tlb ;
 int mips_ftlb_disabled ;
 int mips_has_ftlb_configured ;
 unsigned int page_size_ftlb (unsigned int) ;
 int pr_err (char*,int ,unsigned int) ;
 unsigned int read_c0_config4 () ;
 int set_cpu_asid_mask (struct cpuinfo_mips*,unsigned long) ;
 int set_ftlb_enable (struct cpuinfo_mips*,int ) ;
 int write_c0_config4 (unsigned int) ;

__attribute__((used)) static inline unsigned int decode_config4(struct cpuinfo_mips *c)
{
 unsigned int config4;
 unsigned int newcf4;
 unsigned int mmuextdef;
 unsigned int ftlb_page = MIPS_CONF4_FTLBPAGESIZE;
 unsigned long asid_mask;

 config4 = read_c0_config4();

 if (cpu_has_tlb) {
  if (((config4 & MIPS_CONF4_IE) >> 29) == 2)
   c->options |= MIPS_CPU_TLBINV;






  if (!cpu_has_mips_r6)
   mmuextdef = config4 & MIPS_CONF4_MMUEXTDEF;
  else if (cpu_has_ftlb)
   mmuextdef = 128;
  else
   mmuextdef = 0;

  switch (mmuextdef) {
  case 129:
   c->tlbsize += (config4 & MIPS_CONF4_MMUSIZEEXT) * 0x40;
   c->tlbsizevtlb = c->tlbsize;
   break;
  case 128:
   c->tlbsizevtlb +=
    ((config4 & MIPS_CONF4_VTLBSIZEEXT) >>
      MIPS_CONF4_VTLBSIZEEXT_SHIFT) * 0x40;
   c->tlbsize = c->tlbsizevtlb;
   ftlb_page = MIPS_CONF4_VFTLBPAGESIZE;

  case 130:
   if (mips_ftlb_disabled)
    break;
   newcf4 = (config4 & ~ftlb_page) |
    (page_size_ftlb(mmuextdef) <<
     MIPS_CONF4_FTLBPAGESIZE_SHIFT);
   write_c0_config4(newcf4);
   back_to_back_c0_hazard();
   config4 = read_c0_config4();
   if (config4 != newcf4) {
    pr_err("PAGE_SIZE 0x%lx is not supported by FTLB (config4=0x%x)\n",
           PAGE_SIZE, config4);

    set_ftlb_enable(c, 0);
    mips_ftlb_disabled = 1;
    break;
   }
   c->tlbsizeftlbsets = 1 <<
    ((config4 & MIPS_CONF4_FTLBSETS) >>
     MIPS_CONF4_FTLBSETS_SHIFT);
   c->tlbsizeftlbways = ((config4 & MIPS_CONF4_FTLBWAYS) >>
           MIPS_CONF4_FTLBWAYS_SHIFT) + 2;
   c->tlbsize += c->tlbsizeftlbways * c->tlbsizeftlbsets;
   mips_has_ftlb_configured = 1;
   break;
  }
 }

 c->kscratch_mask = (config4 & MIPS_CONF4_KSCREXIST)
    >> MIPS_CONF4_KSCREXIST_SHIFT;

 asid_mask = MIPS_ENTRYHI_ASID;
 if (config4 & MIPS_CONF4_AE)
  asid_mask |= MIPS_ENTRYHI_ASIDX;
 set_cpu_asid_mask(c, asid_mask);






 WARN_ON(asid_mask != cpu_asid_mask(c));

 return config4 & MIPS_CONF_M;
}
