
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rd_data_reg_sel; unsigned char wd_data; } ;


 unsigned int HZ ;
 unsigned int PSG_ENV_FREQ_10 ;
 unsigned int PSG_FREQ ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ sound_ym ;

void atari_mksound (unsigned int hz, unsigned int ticks)
{


 unsigned long flags;
 unsigned char tmp;
 int period;

 local_irq_save(flags);



 sound_ym.rd_data_reg_sel = 7;
 tmp = sound_ym.rd_data_reg_sel;
 tmp |= 011;
 sound_ym.wd_data = tmp;

 if (hz) {



     period = PSG_FREQ / hz;

     if (period > 0xfff) period = 0xfff;


 sound_ym.rd_data_reg_sel = 0;
 sound_ym.wd_data = period & 0xff;
 sound_ym.rd_data_reg_sel = 1;
 sound_ym.wd_data = (period >> 8) & 0xf;
 if (ticks) {

  int length = (ticks * PSG_ENV_FREQ_10) / HZ / 10;

  if (length > 0xffff) length = 0xffff;
  sound_ym.rd_data_reg_sel = 11;
  sound_ym.wd_data = length & 0xff;
  sound_ym.rd_data_reg_sel = 12;
  sound_ym.wd_data = length >> 8;

  sound_ym.rd_data_reg_sel = 13;
  sound_ym.wd_data = 0;

  sound_ym.rd_data_reg_sel = 8;
  sound_ym.wd_data = 0x10;
 } else {

  sound_ym.rd_data_reg_sel = 8;
  sound_ym.wd_data = 15;
 }

 sound_ym.rd_data_reg_sel = 7;
 tmp &= ~1;
 sound_ym.wd_data = tmp;
 }
 local_irq_restore(flags);
}
