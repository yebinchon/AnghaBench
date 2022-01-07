
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dsklen; } ;
struct TYPE_3__ {scalar_t__ dirty; } ;


 scalar_t__ block_flag ;
 TYPE_2__ custom ;
 int fd_deselect (unsigned long) ;
 int printk (char*,unsigned long) ;
 int rel_fdc () ;
 TYPE_1__* unit ;
 int wait_fd_block ;
 int wake_up (int *) ;
 scalar_t__ writefromint ;
 scalar_t__ writepending ;

__attribute__((used)) static void post_write (unsigned long drive)
{



 drive &= 3;
 custom.dsklen = 0;
 block_flag = 0;
 writepending = 0;
 writefromint = 0;
 unit[drive].dirty = 0;
 wake_up(&wait_fd_block);
 fd_deselect(drive);
 rel_fdc();
}
