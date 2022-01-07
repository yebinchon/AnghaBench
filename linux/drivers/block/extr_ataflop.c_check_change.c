
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {int wpstat; int connected; } ;
struct TYPE_3__ {int rd_data_reg_sel; unsigned char wd_data; } ;


 int DPRINT (char*) ;
 unsigned char DSKDRV0 ;
 unsigned char DSKDRV1 ;
 unsigned char DSKDRVNONE ;
 int FDCREG_STATUS ;
 int FDCSTAT_WPROT ;
 int FDC_READ (int ) ;
 TYPE_2__ UD ;
 int changed_floppies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_bit (int,int *) ;
 TYPE_1__ sound_ym ;
 int start_check_change_timer () ;
 int stdma_islocked () ;

__attribute__((used)) static void check_change(struct timer_list *unused)
{
 static int drive = 0;

 unsigned long flags;
 unsigned char old_porta;
 int stat;

 if (++drive > 1 || !UD.connected)
  drive = 0;


 local_irq_save(flags);

 if (!stdma_islocked()) {
  sound_ym.rd_data_reg_sel = 14;
  old_porta = sound_ym.rd_data_reg_sel;
  sound_ym.wd_data = (old_porta | DSKDRVNONE) &
                  ~(drive == 0 ? DSKDRV0 : DSKDRV1);
  stat = !!(FDC_READ( FDCREG_STATUS ) & FDCSTAT_WPROT);
  sound_ym.wd_data = old_porta;

  if (stat != UD.wpstat) {
   DPRINT(( "wpstat[%d] = %d\n", drive, stat ));
   UD.wpstat = stat;
   set_bit (drive, &changed_floppies);
  }
 }
 local_irq_restore(flags);

 start_check_change_timer();
}
