
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ select_delay; } ;
struct TYPE_7__ {scalar_t__ select_date; int spinup_date; scalar_t__ first_read_date; } ;
struct TYPE_6__ {int dor; } ;
struct TYPE_5__ {int flags; } ;


 TYPE_4__* DP ;
 TYPE_3__* DRS ;
 TYPE_2__* FDCS ;
 int FD_RAW_NO_MOTOR ;
 int UNIT (scalar_t__) ;
 scalar_t__ current_drive ;
 int del_timer (scalar_t__) ;
 int fd_wait_for_completion (scalar_t__,void (*) ()) ;
 int fdc ;
 int jiffies ;
 scalar_t__ motor_off_timer ;
 TYPE_1__* raw_cmd ;
 int set_debugt () ;
 int set_dor (int ,int,int) ;

__attribute__((used)) static int start_motor(void (*function)(void))
{
 int mask;
 int data;

 mask = 0xfc;
 data = UNIT(current_drive);
 if (!(raw_cmd->flags & FD_RAW_NO_MOTOR)) {
  if (!(FDCS->dor & (0x10 << UNIT(current_drive)))) {
   set_debugt();

   DRS->first_read_date = 0;

   DRS->spinup_date = jiffies;
   data |= (0x10 << UNIT(current_drive));
  }
 } else if (FDCS->dor & (0x10 << UNIT(current_drive)))
  mask &= ~(0x10 << UNIT(current_drive));


 del_timer(motor_off_timer + current_drive);
 set_dor(fdc, mask, data);


 return fd_wait_for_completion(DRS->select_date + DP->select_delay,
          function);
}
