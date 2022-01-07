
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCF50633_REG_OOCSHDWN ;
 int gta02_pcf ;
 int pcf50633_reg_set_bit_mask (int ,int ,int,int) ;

__attribute__((used)) static void gta02_poweroff(void)
{
 pcf50633_reg_set_bit_mask(gta02_pcf, PCF50633_REG_OOCSHDWN, 1, 1);
}
