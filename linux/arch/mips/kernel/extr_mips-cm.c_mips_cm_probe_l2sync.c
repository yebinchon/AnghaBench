
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int BUG_ON (int) ;
 int CM_GCR_L2_ONLY_SYNC_BASE_SYNCBASE ;
 int CM_GCR_L2_ONLY_SYNC_BASE_SYNCEN ;
 unsigned int CM_GCR_REV_MAJOR ;
 int MIPS_CM_L2SYNC_SIZE ;
 unsigned int __ffs (unsigned int) ;
 int ioremap_nocache (int,int ) ;
 int mips_cm_l2sync_base ;
 int mips_cm_l2sync_phys_base () ;
 unsigned int read_gcr_rev () ;
 int write_gcr_l2_only_sync_base (int) ;

__attribute__((used)) static void mips_cm_probe_l2sync(void)
{
 unsigned major_rev;
 phys_addr_t addr;


 major_rev = (read_gcr_rev() & CM_GCR_REV_MAJOR) >>
  __ffs(CM_GCR_REV_MAJOR);
 if (major_rev < 6)
  return;


 addr = mips_cm_l2sync_phys_base();
 BUG_ON((addr & CM_GCR_L2_ONLY_SYNC_BASE_SYNCBASE) != addr);
 if (!addr)
  return;


 write_gcr_l2_only_sync_base(addr | CM_GCR_L2_ONLY_SYNC_BASE_SYNCEN);


 mips_cm_l2sync_base = ioremap_nocache(addr, MIPS_CM_L2SYNC_SIZE);
}
