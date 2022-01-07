
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int address; unsigned char dor; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int select_date; } ;


 TYPE_3__* FDCS ;
 int FD_DOR ;
 unsigned char REVDRIVE (int,unsigned char) ;
 TYPE_2__* UDP ;
 TYPE_1__* UDRS ;
 int debug_dcl (int ,char*) ;
 int disk_change (unsigned char) ;
 int fd_outb (unsigned char,int ) ;
 scalar_t__ is_selected (unsigned char,unsigned char) ;
 int jiffies ;

__attribute__((used)) static int set_dor(int fdc, char mask, char data)
{
 unsigned char unit;
 unsigned char drive;
 unsigned char newdor;
 unsigned char olddor;

 if (FDCS->address == -1)
  return -1;

 olddor = FDCS->dor;
 newdor = (olddor & mask) | data;
 if (newdor != olddor) {
  unit = olddor & 0x3;
  if (is_selected(olddor, unit) && !is_selected(newdor, unit)) {
   drive = REVDRIVE(fdc, unit);
   debug_dcl(UDP->flags,
      "calling disk change from set_dor\n");
   disk_change(drive);
  }
  FDCS->dor = newdor;
  fd_outb(newdor, FD_DOR);

  unit = newdor & 0x3;
  if (!is_selected(olddor, unit) && is_selected(newdor, unit)) {
   drive = REVDRIVE(fdc, unit);
   UDRS->select_date = jiffies;
  }
 }
 return olddor;
}
