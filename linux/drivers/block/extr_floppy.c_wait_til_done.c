
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reset; } ;


 int EINTR ;
 int EIO ;
 TYPE_1__* FDCS ;
 int FD_COMMAND_ERROR ;
 int FD_COMMAND_NONE ;
 int FD_COMMAND_OKAY ;
 int cancel_activity () ;
 int command_done ;
 int command_status ;
 int * cont ;
 int intr_cont ;
 int reset_fdc () ;
 int schedule_bh (void (*) ()) ;
 int wait_event (int ,int) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int wait_til_done(void (*handler)(void), bool interruptible)
{
 int ret;

 schedule_bh(handler);

 if (interruptible)
  wait_event_interruptible(command_done, command_status >= 2);
 else
  wait_event(command_done, command_status >= 2);

 if (command_status < 2) {
  cancel_activity();
  cont = &intr_cont;
  reset_fdc();
  return -EINTR;
 }

 if (FDCS->reset)
  command_status = FD_COMMAND_ERROR;
 if (command_status == FD_COMMAND_OKAY)
  ret = 0;
 else
  ret = -EIO;
 command_status = FD_COMMAND_NONE;
 return ret;
}
