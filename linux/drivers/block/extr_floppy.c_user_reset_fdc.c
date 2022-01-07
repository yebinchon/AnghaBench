
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; } ;


 int EINTR ;
 TYPE_1__* FDCS ;
 int FD_RESET_ALWAYS ;
 int * cont ;
 scalar_t__ lock_fdc (int) ;
 int process_fd_request () ;
 int reset_cont ;
 int reset_fdc ;
 int wait_til_done (int ,int) ;

__attribute__((used)) static int user_reset_fdc(int drive, int arg, bool interruptible)
{
 int ret;

 if (lock_fdc(drive))
  return -EINTR;

 if (arg == FD_RESET_ALWAYS)
  FDCS->reset = 1;
 if (FDCS->reset) {
  cont = &reset_cont;
  ret = wait_til_done(reset_fdc, interruptible);
  if (ret == -EINTR)
   return -EINTR;
 }
 process_fd_request();
 return 0;
}
