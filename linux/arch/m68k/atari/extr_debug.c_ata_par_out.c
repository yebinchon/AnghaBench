
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rd_data_reg_sel; char wd_data; } ;
struct TYPE_3__ {int par_dt_reg; } ;


 int HZ ;
 int MFPDELAY () ;
 int loops_per_jiffy ;
 TYPE_2__ sound_ym ;
 TYPE_1__ st_mfp ;

__attribute__((used)) static int ata_par_out(char c)
{
 unsigned char tmp;

 unsigned long i = loops_per_jiffy > 1 ? loops_per_jiffy : 10000000/HZ;

 while ((st_mfp.par_dt_reg & 1) && --i)
  ;
 if (!i)
  return 0;

 sound_ym.rd_data_reg_sel = 15;
 sound_ym.wd_data = c;
 sound_ym.rd_data_reg_sel = 14;
 tmp = sound_ym.rd_data_reg_sel;
 sound_ym.wd_data = tmp & ~0x20;
 MFPDELAY();
 sound_ym.wd_data = tmp | 0x20;
 return 1;
}
