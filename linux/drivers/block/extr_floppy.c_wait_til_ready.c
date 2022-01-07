
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; } ;


 int DPRINT (char*,int,int ) ;
 TYPE_1__* FDCS ;
 int FD_STATUS ;
 int STATUS_READY ;
 int fd_inb (int ) ;
 int fdc ;
 scalar_t__ initialized ;
 int show_floppy () ;

__attribute__((used)) static int wait_til_ready(void)
{
 int status;
 int counter;

 if (FDCS->reset)
  return -1;
 for (counter = 0; counter < 10000; counter++) {
  status = fd_inb(FD_STATUS);
  if (status & STATUS_READY)
   return status;
 }
 if (initialized) {
  DPRINT("Getstatus times out (%x) on fdc %d\n", status, fdc);
  show_floppy();
 }
 FDCS->reset = 1;
 return -1;
}
