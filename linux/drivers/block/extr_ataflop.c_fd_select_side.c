
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rd_data_reg_sel; int wd_data; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ sound_ym ;

__attribute__((used)) static void fd_select_side( int side )
{
 unsigned long flags;


 local_irq_save(flags);

 sound_ym.rd_data_reg_sel = 14;
 sound_ym.wd_data = (side == 0) ? sound_ym.rd_data_reg_sel | 0x01 :
                                  sound_ym.rd_data_reg_sel & 0xfe;

 local_irq_restore(flags);
}
