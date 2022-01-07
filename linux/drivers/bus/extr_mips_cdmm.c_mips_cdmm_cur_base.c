
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long phys_addr_t ;


 unsigned long MIPS_CDMMBASE_ADDR_SHIFT ;
 unsigned long MIPS_CDMMBASE_ADDR_START ;
 unsigned long MIPS_CDMMBASE_EN ;
 unsigned long read_c0_cdmmbase () ;

__attribute__((used)) static phys_addr_t mips_cdmm_cur_base(void)
{
 unsigned long cdmmbase = read_c0_cdmmbase();

 if (!(cdmmbase & MIPS_CDMMBASE_EN))
  return 0;

 return (cdmmbase >> MIPS_CDMMBASE_ADDR_SHIFT)
  << MIPS_CDMMBASE_ADDR_START;
}
