
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long timeout; int flags; } ;


 int DPRINT (char*,char const*) ;
 int FD_DEBUG ;
 unsigned long HZ ;
 int N_DRIVE ;
 TYPE_1__* UDP ;
 int current_drive ;
 int current_reqD ;
 int fd_timeout ;
 int floppy_wq ;
 int mod_delayed_work (int ,int *,unsigned long) ;
 char const* timeout_message ;

__attribute__((used)) static void __reschedule_timeout(int drive, const char *message)
{
 unsigned long delay;

 if (drive == current_reqD)
  drive = current_drive;

 if (drive < 0 || drive >= N_DRIVE) {
  delay = 20UL * HZ;
  drive = 0;
 } else
  delay = UDP->timeout;

 mod_delayed_work(floppy_wq, &fd_timeout, delay);
 if (UDP->flags & FD_DEBUG)
  DPRINT("reschedule timeout %s\n", message);
 timeout_message = message;
}
