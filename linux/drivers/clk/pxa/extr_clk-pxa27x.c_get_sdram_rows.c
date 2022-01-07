
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MDCNFG ;
 int MDCNFG_DE0 ;
 int MDCNFG_DE1 ;
 int MDCNFG_DE2 ;
 int MDCNFG_DE3 ;
 unsigned int MDCNFG_DRAC0 (int) ;
 unsigned int MDCNFG_DRAC2 (int) ;
 int max (unsigned int,unsigned int) ;
 int readl_relaxed (int ) ;

__attribute__((used)) static int get_sdram_rows(void)
{
 static int sdram_rows;
 unsigned int drac2 = 0, drac0 = 0;
 u32 mdcnfg;

 if (sdram_rows)
  return sdram_rows;

 mdcnfg = readl_relaxed(MDCNFG);

 if (mdcnfg & (MDCNFG_DE2 | MDCNFG_DE3))
  drac2 = MDCNFG_DRAC2(mdcnfg);

 if (mdcnfg & (MDCNFG_DE0 | MDCNFG_DE1))
  drac0 = MDCNFG_DRAC0(mdcnfg);

 sdram_rows = 1 << (11 + max(drac0, drac2));
 return sdram_rows;
}
