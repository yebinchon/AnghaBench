
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;


 TYPE_2__* DP ;
 TYPE_1__* DRS ;
 int FD_DISK_NEWCHANGE_BIT ;
 int current_reqD ;
 int debug_dcl (int ,char*) ;
 int floppy_ready () ;
 int reschedule_timeout (int ,char*) ;
 int scandrives () ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void floppy_start(void)
{
 reschedule_timeout(current_reqD, "floppy start");

 scandrives();
 debug_dcl(DP->flags, "setting NEWCHANGE in floppy_start\n");
 set_bit(FD_DISK_NEWCHANGE_BIT, &DRS->flags);
 floppy_ready();
}
