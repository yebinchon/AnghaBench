
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int reporting; } ;
struct TYPE_10__ {int flags; TYPE_1__ max_errors; } ;
struct TYPE_9__ {int track; int flags; } ;
struct TYPE_8__ {int reset; } ;
struct TYPE_7__ {int (* error ) () ;int (* done ) (int ) ;} ;


 TYPE_5__* DP ;
 int DPRINT (char*) ;
 TYPE_4__* DRS ;
 TYPE_3__* FDCS ;
 int FD_DISK_WRITABLE_BIT ;
 int FD_NEED_TWADDLE_BIT ;
 int FTD_MSG ;
 int NEED_2_RECAL ;
 int ST0 ;
 int ST0_INTR ;
 int ST1 ;
 int ST1_EOC ;
 int ST1_ND ;
 int ST1_OR ;
 int ST1_WP ;
 int ST2 ;
 int ST2_BC ;
 int ST2_WC ;
 int clear_bit (int ,int *) ;
 TYPE_2__* cont ;
 int * errors ;
 int inr ;
 int print_errors () ;
 int set_bit (int ,int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 () ;

__attribute__((used)) static int interpret_errors(void)
{
 char bad;

 if (inr != 7) {
  DPRINT("-- FDC reply error\n");
  FDCS->reset = 1;
  return 1;
 }


 switch (ST0 & ST0_INTR) {
 case 0x40:
  if (ST1 & ST1_EOC)
   return 0;
  bad = 1;
  if (ST1 & ST1_WP) {
   DPRINT("Drive is write protected\n");
   clear_bit(FD_DISK_WRITABLE_BIT, &DRS->flags);
   cont->done(0);
   bad = 2;
  } else if (ST1 & ST1_ND) {
   set_bit(FD_NEED_TWADDLE_BIT, &DRS->flags);
  } else if (ST1 & ST1_OR) {
   if (DP->flags & FTD_MSG)
    DPRINT("Over/Underrun - retrying\n");
   bad = 0;
  } else if (*errors >= DP->max_errors.reporting) {
   print_errors();
  }
  if (ST2 & ST2_WC || ST2 & ST2_BC)

   DRS->track = NEED_2_RECAL;
  return bad;
 case 0x80:
  DPRINT("Invalid FDC command given!\n");
  cont->done(0);
  return 2;
 case 0xc0:
  DPRINT("Abnormal termination caused by polling\n");
  cont->error();
  return 2;
 default:
  return 0;
 }
}
