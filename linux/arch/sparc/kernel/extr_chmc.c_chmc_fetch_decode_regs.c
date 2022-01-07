
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmc {scalar_t__ layout_size; } ;


 int CHMCTRL_DECODE1 ;
 int CHMCTRL_DECODE2 ;
 int CHMCTRL_DECODE3 ;
 int CHMCTRL_DECODE4 ;
 int chmc_interpret_one_decode_reg (struct chmc*,int,int ) ;
 int chmc_read_mcreg (struct chmc*,int ) ;

__attribute__((used)) static void chmc_fetch_decode_regs(struct chmc *p)
{
 if (p->layout_size == 0)
  return;

 chmc_interpret_one_decode_reg(p, 0,
          chmc_read_mcreg(p, CHMCTRL_DECODE1));
 chmc_interpret_one_decode_reg(p, 1,
          chmc_read_mcreg(p, CHMCTRL_DECODE2));
 chmc_interpret_one_decode_reg(p, 2,
          chmc_read_mcreg(p, CHMCTRL_DECODE3));
 chmc_interpret_one_decode_reg(p, 3,
          chmc_read_mcreg(p, CHMCTRL_DECODE4));
}
