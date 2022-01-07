
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; } ;


 int DPRINT (char*,int ,int,int) ;
 TYPE_1__* FDCS ;
 int FD_DATA ;
 int MAX_REPLIES ;
 int STATUS_BUSY ;
 int STATUS_DIR ;
 int STATUS_DMA ;
 int STATUS_READY ;
 int fd_inb (int ) ;
 int fdc ;
 scalar_t__ initialized ;
 int jiffies ;
 int * reply_buffer ;
 int resultjiffies ;
 int resultsize ;
 int show_floppy () ;
 int wait_til_ready () ;

__attribute__((used)) static int result(void)
{
 int i;
 int status = 0;

 for (i = 0; i < MAX_REPLIES; i++) {
  status = wait_til_ready();
  if (status < 0)
   break;
  status &= STATUS_DIR | STATUS_READY | STATUS_BUSY | STATUS_DMA;
  if ((status & ~STATUS_BUSY) == STATUS_READY) {
   resultjiffies = jiffies;
   resultsize = i;
   return i;
  }
  if (status == (STATUS_DIR | STATUS_READY | STATUS_BUSY))
   reply_buffer[i] = fd_inb(FD_DATA);
  else
   break;
 }
 if (initialized) {
  DPRINT("get result error. Fdc=%d Last status=%x Read bytes=%d\n",
         fdc, status, i);
  show_floppy();
 }
 FDCS->reset = 1;
 return -1;
}
