
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWITCH_REG_BW_CNTL0 ;
 int SWITCH_REG_BW_CNTL1 ;
 int SW_DBG (char*,int ,int ) ;
 int sw_read_reg (int ) ;
 int sw_write_reg (int ,unsigned long) ;

__attribute__((used)) static void adm5120_set_bw(char *matrix)
{
 unsigned long val;


 val = matrix[0] + (matrix[1]<<8) + (matrix[2]<<16) + (matrix[3]<<24);
 sw_write_reg(SWITCH_REG_BW_CNTL0, val);


 val = matrix[4];
 if (matrix[5] == 1)
  sw_write_reg(SWITCH_REG_BW_CNTL1, val | 0x80000000);
 else
  sw_write_reg(SWITCH_REG_BW_CNTL1, val & ~0x8000000);

 SW_DBG("D: ctl0 0x%ux, ctl1 0x%ux\n", sw_read_reg(SWITCH_REG_BW_CNTL0),
  sw_read_reg(SWITCH_REG_BW_CNTL1));
}
