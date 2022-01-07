
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int select_delay; int flags; } ;
struct TYPE_5__ {scalar_t__ reset; } ;
struct TYPE_4__ {int flags; int length; int kernel_data; } ;


 TYPE_3__* DP ;
 TYPE_2__* FDCS ;
 int FD_RAW_NEED_DISK ;
 int FD_RAW_NEED_SEEK ;
 int FD_RAW_NO_MOTOR ;
 int FD_RAW_READ ;
 int FD_RAW_WRITE ;
 unsigned long claim_dma_lock () ;
 int current_drive ;
 int debug_dcl (int ,char*) ;
 scalar_t__ disk_change (int ) ;
 int fd_chose_dma_mode (int ,int ) ;
 scalar_t__ fdc_dtr () ;
 int fdc_specify () ;
 int perpendicular_mode () ;
 TYPE_1__* raw_cmd ;
 int release_dma_lock (unsigned long) ;
 int reset_fdc () ;
 int seek_floppy () ;
 int setup_rw_floppy () ;
 scalar_t__ start_motor (void (*) ()) ;
 int twaddle () ;

__attribute__((used)) static void floppy_ready(void)
{
 if (FDCS->reset) {
  reset_fdc();
  return;
 }
 if (start_motor(floppy_ready))
  return;
 if (fdc_dtr())
  return;

 debug_dcl(DP->flags, "calling disk change from floppy_ready\n");
 if (!(raw_cmd->flags & FD_RAW_NO_MOTOR) &&
     disk_change(current_drive) && !DP->select_delay)
  twaddle();
 if (raw_cmd->flags & (FD_RAW_NEED_SEEK | FD_RAW_NEED_DISK)) {
  perpendicular_mode();
  fdc_specify();
  seek_floppy();
 } else {
  if ((raw_cmd->flags & FD_RAW_READ) ||
      (raw_cmd->flags & FD_RAW_WRITE))
   fdc_specify();
  setup_rw_floppy();
 }
}
