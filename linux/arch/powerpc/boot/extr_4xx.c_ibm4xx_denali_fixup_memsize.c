
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DDR0_02 ;
 int DDR0_14 ;
 int DDR0_42 ;
 int DDR0_43 ;
 int DDR_APIN ;
 int DDR_APIN_SHIFT ;
 int DDR_BANK8 ;
 int DDR_BANK8_SHIFT ;
 int DDR_COL_SZ ;
 int DDR_COL_SZ_SHIFT ;
 int DDR_GET_VAL (int,int ,int ) ;
 int DDR_MAX_COL_REG ;
 int DDR_MAX_COL_REG_SHIFT ;
 int DDR_MAX_CS_REG ;
 int DDR_MAX_CS_REG_SHIFT ;
 int DDR_MAX_ROW_REG ;
 int DDR_MAX_ROW_REG_SHIFT ;
 int DDR_REDUC ;
 int DDR_REDUC_SHIFT ;
 int DDR_START ;
 int DDR_START_SHIFT ;
 int SDRAM0_READ (int ) ;
 unsigned long chip_11_errata (unsigned long) ;
 int dt_fixup_memory (int ,unsigned long) ;
 int fatal (char*) ;
 int ibm4xx_denali_get_cs () ;

void ibm4xx_denali_fixup_memsize(void)
{
 u32 val, max_cs, max_col, max_row;
 u32 cs, col, row, bank, dpath;
 unsigned long memsize;

 val = SDRAM0_READ(DDR0_02);
 if (!DDR_GET_VAL(val, DDR_START, DDR_START_SHIFT))
  fatal("DDR controller is not initialized\n");


 max_cs = DDR_GET_VAL(val, DDR_MAX_CS_REG, DDR_MAX_CS_REG_SHIFT);
 max_col = DDR_GET_VAL(val, DDR_MAX_COL_REG, DDR_MAX_COL_REG_SHIFT);
 max_row = DDR_GET_VAL(val, DDR_MAX_ROW_REG, DDR_MAX_ROW_REG_SHIFT);

 cs = ibm4xx_denali_get_cs();
 if (!cs)
  fatal("No memory installed\n");
 if (cs > max_cs)
  fatal("DDR wrong CS configuration\n");


 val = SDRAM0_READ(DDR0_14);

 if (DDR_GET_VAL(val, DDR_REDUC, DDR_REDUC_SHIFT))
  dpath = 4;
 else
  dpath = 8;


  val = SDRAM0_READ(DDR0_42);

 row = DDR_GET_VAL(val, DDR_APIN, DDR_APIN_SHIFT);
 if (row > max_row)
  fatal("DDR wrong APIN configuration\n");
 row = max_row - row;


 val = SDRAM0_READ(DDR0_43);

 col = DDR_GET_VAL(val, DDR_COL_SZ, DDR_COL_SZ_SHIFT);
 if (col > max_col)
  fatal("DDR wrong COL configuration\n");
 col = max_col - col;

 if (DDR_GET_VAL(val, DDR_BANK8, DDR_BANK8_SHIFT))
  bank = 8;
 else
  bank = 4;

 memsize = cs * (1 << (col+row)) * bank * dpath;
 memsize = chip_11_errata(memsize);
 dt_fixup_memory(0, memsize);
}
