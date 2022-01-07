
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int reset; } ;


 TYPE_3__* DP ;
 TYPE_2__* DRS ;
 TYPE_1__* FDCS ;
 int FD_DISK_WRITABLE_BIT ;
 int FD_GETSTATUS ;
 int FD_NEED_TWADDLE_BIT ;
 int FD_VERIFY_BIT ;
 int ST3 ;
 int UNIT (int ) ;
 int clear_bit (int ,int *) ;
 int current_drive ;
 int debug_dcl (int ,char*,...) ;
 int output_byte (int ) ;
 int result () ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void check_wp(void)
{
 if (test_bit(FD_VERIFY_BIT, &DRS->flags)) {

  output_byte(FD_GETSTATUS);
  output_byte(UNIT(current_drive));
  if (result() != 1) {
   FDCS->reset = 1;
   return;
  }
  clear_bit(FD_VERIFY_BIT, &DRS->flags);
  clear_bit(FD_NEED_TWADDLE_BIT, &DRS->flags);
  debug_dcl(DP->flags,
     "checking whether disk is write protected\n");
  debug_dcl(DP->flags, "wp=%x\n", ST3 & 0x40);
  if (!(ST3 & 0x40))
   set_bit(FD_DISK_WRITABLE_BIT, &DRS->flags);
  else
   clear_bit(FD_DISK_WRITABLE_BIT, &DRS->flags);
 }
}
