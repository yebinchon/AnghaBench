
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dtr; } ;
struct TYPE_3__ {int rate; } ;


 TYPE_2__* FDCS ;
 int FD_DCR ;
 unsigned long HZ ;
 int fd_outb (int,int ) ;
 int fd_wait_for_completion (scalar_t__,int ) ;
 int floppy_ready ;
 scalar_t__ jiffies ;
 TYPE_1__* raw_cmd ;

__attribute__((used)) static int fdc_dtr(void)
{

 if ((raw_cmd->rate & 3) == FDCS->dtr)
  return 0;


 fd_outb(raw_cmd->rate & 3, FD_DCR);






 FDCS->dtr = raw_cmd->rate & 3;
 return fd_wait_for_completion(jiffies + 2UL * HZ / 100, floppy_ready);
}
