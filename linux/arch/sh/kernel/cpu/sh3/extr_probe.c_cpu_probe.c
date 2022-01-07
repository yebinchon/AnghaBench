
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ways; int entry_shift; int way_incr; int entry_mask; int sets; int flags; int linesz; } ;
struct TYPE_4__ {int family; TYPE_1__ dcache; TYPE_1__ icache; int type; int flags; } ;


 int CACHE_OC_ADDRESS_ARRAY ;
 unsigned long CCR3_REG ;
 unsigned long CCR_CACHE_16KB ;
 unsigned long CCR_CACHE_32KB ;
 int CPU_FAMILY_SH3 ;
 int CPU_HAS_MMU_PAGE_ASSOC ;
 int CPU_SH7705 ;
 int CPU_SH7706 ;
 int CPU_SH7708 ;
 int CPU_SH7710 ;
 int CPU_SH7712 ;
 int CPU_SH7720 ;
 int CPU_SH7721 ;
 int CPU_SH7729 ;
 int L1_CACHE_BYTES ;
 int SH_CACHE_COMBINED ;
 unsigned long SH_CACHE_UPDATED ;
 unsigned long SH_CACHE_VALID ;
 unsigned long __raw_readl (unsigned long) ;
 int __raw_writel (unsigned long,unsigned long) ;
 int back_to_cached () ;
 TYPE_2__ boot_cpu_data ;
 int jump_to_uncached () ;

void cpu_probe(void)
{
 unsigned long addr0, addr1, data0, data1, data2, data3;

 jump_to_uncached();





 addr0 = CACHE_OC_ADDRESS_ARRAY + (3 << 12);
 addr1 = CACHE_OC_ADDRESS_ARRAY + (1 << 12);


 data0 = __raw_readl(addr0);
 __raw_writel(data0&~(SH_CACHE_VALID|SH_CACHE_UPDATED), addr0);
 data1 = __raw_readl(addr1);
 __raw_writel(data1&~(SH_CACHE_VALID|SH_CACHE_UPDATED), addr1);


 data0 = __raw_readl(addr0);
 data0 ^= SH_CACHE_VALID;
 __raw_writel(data0, addr0);
 data1 = __raw_readl(addr1);
 data2 = data1 ^ SH_CACHE_VALID;
 __raw_writel(data2, addr1);
 data3 = __raw_readl(addr0);


 __raw_writel(data0&~SH_CACHE_VALID, addr0);
 __raw_writel(data2&~SH_CACHE_VALID, addr1);

 back_to_cached();

 boot_cpu_data.dcache.ways = 4;
 boot_cpu_data.dcache.entry_shift = 4;
 boot_cpu_data.dcache.linesz = L1_CACHE_BYTES;
 boot_cpu_data.dcache.flags = 0;





 if (data0 == data1 && data2 == data3) {
  boot_cpu_data.dcache.way_incr = (1 << 11);
  boot_cpu_data.dcache.entry_mask = 0x7f0;
  boot_cpu_data.dcache.sets = 128;
  boot_cpu_data.type = CPU_SH7708;

  boot_cpu_data.flags |= CPU_HAS_MMU_PAGE_ASSOC;
 } else {
  boot_cpu_data.dcache.way_incr = (1 << 12);
  boot_cpu_data.dcache.entry_mask = 0xff0;
  boot_cpu_data.dcache.sets = 256;
  boot_cpu_data.type = CPU_SH7729;
 }




 boot_cpu_data.dcache.flags |= SH_CACHE_COMBINED;
 boot_cpu_data.icache = boot_cpu_data.dcache;

 boot_cpu_data.family = CPU_FAMILY_SH3;
}
