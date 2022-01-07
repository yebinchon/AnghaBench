
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rd_data_reg_sel; int wd_data; } ;


 scalar_t__ MACH_IS_FALCON ;
 int SelectedDrive ;
 scalar_t__ atari_dont_touch_floppy_select ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ sound_ym ;

__attribute__((used)) static void fd_deselect( void )
{
 unsigned long flags;


 local_irq_save(flags);
 atari_dont_touch_floppy_select = 0;
 sound_ym.rd_data_reg_sel=14;
 sound_ym.wd_data = (sound_ym.rd_data_reg_sel |
       (MACH_IS_FALCON ? 3 : 7));


 SelectedDrive = -1;
 local_irq_restore(flags);
}
