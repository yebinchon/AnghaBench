
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scache {int dummy; } ;
struct TYPE_2__ {int use_instr; scalar_t__ ver_code; scalar_t__ dcache_wb; } ;


 scalar_t__ CPUVER_7_20_A ;
 scalar_t__ CPUVER_7_20_D ;
 int PVR2_USE_MSR_INSTR ;
 TYPE_1__ cpuinfo ;
 int enable_dcache () ;
 int enable_icache () ;
 int invalidate_icache () ;
 struct scache* mbc ;
 int pr_info (char*) ;
 int wb_msr ;
 int wb_nomsr ;
 int wt_msr ;
 int wt_msr_noirq ;
 int wt_nomsr ;
 int wt_nomsr_noirq ;

void microblaze_cache_init(void)
{
 if (cpuinfo.use_instr & PVR2_USE_MSR_INSTR) {
  if (cpuinfo.dcache_wb) {
   pr_info("wb_msr\n");
   mbc = (struct scache *)&wb_msr;
   if (cpuinfo.ver_code <= CPUVER_7_20_D) {

    pr_info("WB won't work properly\n");
   }
  } else {
   if (cpuinfo.ver_code >= CPUVER_7_20_A) {
    pr_info("wt_msr_noirq\n");
    mbc = (struct scache *)&wt_msr_noirq;
   } else {
    pr_info("wt_msr\n");
    mbc = (struct scache *)&wt_msr;
   }
  }
 } else {
  if (cpuinfo.dcache_wb) {
   pr_info("wb_nomsr\n");
   mbc = (struct scache *)&wb_nomsr;
   if (cpuinfo.ver_code <= CPUVER_7_20_D) {

    pr_info("WB won't work properly\n");
   }
  } else {
   if (cpuinfo.ver_code >= CPUVER_7_20_A) {
    pr_info("wt_nomsr_noirq\n");
    mbc = (struct scache *)&wt_nomsr_noirq;
   } else {
    pr_info("wt_nomsr\n");
    mbc = (struct scache *)&wt_nomsr;
   }
  }
 }






 enable_dcache();

 invalidate_icache();
 enable_icache();
}
