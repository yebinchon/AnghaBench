
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore_box {int io_addr; } ;


 int SNBEP_PMON_BOX_CTL_FRZ ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void snr_uncore_mmio_disable_box(struct intel_uncore_box *box)
{
 u32 config;

 if (!box->io_addr)
  return;

 config = readl(box->io_addr);
 config |= SNBEP_PMON_BOX_CTL_FRZ;
 writel(config, box->io_addr);
}
