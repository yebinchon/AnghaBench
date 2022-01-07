
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AMD_K7_NUM_IORR ;
 int EINVAL ;
 scalar_t__ IORR_BASE0 ;
 scalar_t__ IORR_MASK0 ;
 scalar_t__ SYSCFG ;
 int rdmsr (scalar_t__,int,int) ;
 int wrmsr (scalar_t__,int,int) ;

__attribute__((used)) static int nvidia_init_iorr(u32 base, u32 size)
{
 u32 base_hi, base_lo;
 u32 mask_hi, mask_lo;
 u32 sys_hi, sys_lo;
 u32 iorr_addr, free_iorr_addr;



 free_iorr_addr = AMD_K7_NUM_IORR;
 for (iorr_addr = 0; iorr_addr < AMD_K7_NUM_IORR; iorr_addr++) {
  rdmsr(IORR_BASE0 + 2 * iorr_addr, base_lo, base_hi);
  rdmsr(IORR_MASK0 + 2 * iorr_addr, mask_lo, mask_hi);

  if ((base_lo & 0xfffff000) == (base & 0xfffff000))
   break;

  if ((mask_lo & 0x00000800) == 0)
   free_iorr_addr = iorr_addr;
 }

 if (iorr_addr >= AMD_K7_NUM_IORR) {
  iorr_addr = free_iorr_addr;
  if (iorr_addr >= AMD_K7_NUM_IORR)
   return -EINVAL;
 }
    base_hi = 0x0;
    base_lo = (base & ~0xfff) | 0x18;
    mask_hi = 0xf;
    mask_lo = ((~(size - 1)) & 0xfffff000) | 0x800;
    wrmsr(IORR_BASE0 + 2 * iorr_addr, base_lo, base_hi);
    wrmsr(IORR_MASK0 + 2 * iorr_addr, mask_lo, mask_hi);

    rdmsr(SYSCFG, sys_lo, sys_hi);
    sys_lo |= 0x00100000;
    wrmsr(SYSCFG, sys_lo, sys_hi);

 return 0;
}
