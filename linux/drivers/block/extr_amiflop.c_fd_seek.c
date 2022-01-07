
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned char prb; } ;
struct TYPE_5__ {int track; TYPE_1__* type; } ;
struct TYPE_4__ {int settle_time; int step_delay; int side_time; } ;


 unsigned char DSKDIREC ;
 unsigned char DSKSIDE ;
 unsigned char DSKSTEP ;
 TYPE_3__ ciab ;
 int fd_calibrate (int) ;
 int fd_deselect (int) ;
 int fd_motor_on (int) ;
 int fd_select (int) ;
 int get_fdc (int) ;
 int ms_delay (int ) ;
 int printk (char*,int,int) ;
 int rel_fdc () ;
 int udelay (int) ;
 TYPE_2__* unit ;

__attribute__((used)) static int fd_seek(int drive, int track)
{
 unsigned char prb;
 int cnt;




 drive &= 3;
 get_fdc(drive);
 if (unit[drive].track == track) {
  rel_fdc();
  return 1;
 }
 if (!fd_motor_on(drive)) {
  rel_fdc();
  return 0;
 }
 if (unit[drive].track < 0 && !fd_calibrate(drive)) {
  rel_fdc();
  return 0;
 }

 fd_select (drive);
 cnt = unit[drive].track/2 - track/2;
 prb = ciab.prb;
 prb |= DSKSIDE | DSKDIREC;
 if (track % 2 != 0)
  prb &= ~DSKSIDE;
 if (cnt < 0) {
  cnt = - cnt;
  prb &= ~DSKDIREC;
 }
 ciab.prb = prb;
 if (track % 2 != unit[drive].track % 2)
  ms_delay (unit[drive].type->side_time);
 unit[drive].track = track;
 if (cnt == 0) {
  rel_fdc();
  fd_deselect(drive);
  return 1;
 }
 do {
  prb &= ~DSKSTEP;
  ciab.prb = prb;
  prb |= DSKSTEP;
  udelay (1);
  ciab.prb = prb;
  ms_delay (unit[drive].type->step_delay);
 } while (--cnt != 0);
 ms_delay (unit[drive].type->settle_time);

 rel_fdc();
 fd_deselect(drive);
 return 1;
}
