
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int flags; scalar_t__ cmd_count; scalar_t__ track; } ;


 TYPE_4__* DP ;
 TYPE_3__* DRS ;
 int FD_DISK_NEWCHANGE_BIT ;
 int * cont ;
 int debug_dcl (int ,char*) ;
 TYPE_1__ default_raw_cmd ;
 int floppy_ready ;
 int poll_cont ;
 TYPE_1__* raw_cmd ;
 int set_bit (int ,int *) ;
 int wait_til_done (int ,int) ;

__attribute__((used)) static int poll_drive(bool interruptible, int flag)
{

 raw_cmd = &default_raw_cmd;
 raw_cmd->flags = flag;
 raw_cmd->track = 0;
 raw_cmd->cmd_count = 0;
 cont = &poll_cont;
 debug_dcl(DP->flags, "setting NEWCHANGE in poll_drive\n");
 set_bit(FD_DISK_NEWCHANGE_BIT, &DRS->flags);

 return wait_til_done(floppy_ready, interruptible);
}
