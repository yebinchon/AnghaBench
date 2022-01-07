
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dor; } ;
struct TYPE_5__ {int flags; scalar_t__ select_delay; } ;
struct TYPE_4__ {int flags; scalar_t__ keep_data; int last_checked; scalar_t__ maxblock; scalar_t__ select_date; } ;


 int DPRINT (char*,...) ;
 int FDC (int) ;
 TYPE_3__* FDCS ;
 int FD_BROKEN_DCL ;
 int FD_DIR ;
 int FD_DISK_CHANGED_BIT ;
 int FD_DISK_NEWCHANGE_BIT ;
 int FD_VERIFY_BIT ;
 int FTD_MSG ;
 int MAX_DISK_SIZE ;
 size_t TOMINOR (int) ;
 TYPE_2__* UDP ;
 TYPE_1__* UDRS ;
 int UNIT (int) ;
 int clear_bit (int ,int*) ;
 int ** current_type ;
 int debug_dcl (int,char*,int) ;
 int fd_inb (int ) ;
 int* floppy_sizes ;
 int jiffies ;
 int set_bit (int ,int*) ;
 int test_bit (int ,int*) ;
 scalar_t__ time_before (int,scalar_t__) ;

__attribute__((used)) static int disk_change(int drive)
{
 int fdc = FDC(drive);

 if (time_before(jiffies, UDRS->select_date + UDP->select_delay))
  DPRINT("WARNING disk change called early\n");
 if (!(FDCS->dor & (0x10 << UNIT(drive))) ||
     (FDCS->dor & 3) != UNIT(drive) || fdc != FDC(drive)) {
  DPRINT("probing disk change on unselected drive\n");
  DPRINT("drive=%d fdc=%d dor=%x\n", drive, FDC(drive),
         (unsigned int)FDCS->dor);
 }

 debug_dcl(UDP->flags,
    "checking disk change line for drive %d\n", drive);
 debug_dcl(UDP->flags, "jiffies=%lu\n", jiffies);
 debug_dcl(UDP->flags, "disk change line=%x\n", fd_inb(FD_DIR) & 0x80);
 debug_dcl(UDP->flags, "flags=%lx\n", UDRS->flags);

 if (UDP->flags & FD_BROKEN_DCL)
  return test_bit(FD_DISK_CHANGED_BIT, &UDRS->flags);
 if ((fd_inb(FD_DIR) ^ UDP->flags) & 0x80) {
  set_bit(FD_VERIFY_BIT, &UDRS->flags);


  if (UDRS->maxblock)
   set_bit(FD_DISK_CHANGED_BIT, &UDRS->flags);


  if (UDRS->keep_data >= 0) {
   if ((UDP->flags & FTD_MSG) &&
       current_type[drive] != ((void*)0))
    DPRINT("Disk type is undefined after disk change\n");
   current_type[drive] = ((void*)0);
   floppy_sizes[TOMINOR(drive)] = MAX_DISK_SIZE << 1;
  }

  return 1;
 } else {
  UDRS->last_checked = jiffies;
  clear_bit(FD_DISK_NEWCHANGE_BIT, &UDRS->flags);
 }
 return 0;
}
