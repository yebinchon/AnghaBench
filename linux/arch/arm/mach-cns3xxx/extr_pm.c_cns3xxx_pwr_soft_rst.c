
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cns3xxx_pwr_soft_rst_force (unsigned int) ;

void cns3xxx_pwr_soft_rst(unsigned int block)
{
 static unsigned int soft_reset;

 if (soft_reset & block) {

  return;
 } else {
  soft_reset |= block;
 }
 cns3xxx_pwr_soft_rst_force(block);
}
