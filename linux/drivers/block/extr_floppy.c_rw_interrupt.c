
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {scalar_t__ first_read_date; } ;
struct TYPE_11__ {int (* redo ) () ;int (* done ) (int) ;int (* error ) () ;} ;
struct TYPE_10__ {int bio; } ;
struct TYPE_9__ {int name; int size; } ;
struct TYPE_8__ {scalar_t__ kernel_data; int track; } ;


 int COMMAND ;
 scalar_t__ CT (int) ;
 int DIV_ROUND_UP (int,int) ;
 TYPE_7__* DP ;
 int DPRINT (char*,int,size_t) ;
 TYPE_6__* DRS ;
 scalar_t__ FD_READ ;
 int FTD_MSG ;
 int HEAD ;
 int INFBOUND (int,int) ;
 int R_HEAD ;
 int R_SECTOR ;
 int R_TRACK ;
 int SECTOR ;
 int SECT_PER_TRACK ;
 int SIZECODE ;
 int ST1 ;
 int ST1_EOC ;
 int SUPBOUND (int,int) ;
 size_t TOMINOR (size_t) ;
 int TRACK ;
 TYPE_2__* _floppy ;
 scalar_t__ bio_data (int ) ;
 size_t buffer_drive ;
 int buffer_max ;
 int buffer_track ;
 TYPE_4__* cont ;
 int current_count_sectors ;
 size_t current_drive ;
 TYPE_3__* current_req ;
 TYPE_2__** current_type ;
 int * floppy_sizes ;
 int fsector_t ;
 int in_sector_offset ;
 int interpret_errors () ;
 scalar_t__ jiffies ;
 int pr_info (char*,int,...) ;
 scalar_t__ probing ;
 TYPE_1__* raw_cmd ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 () ;
 int stub5 (int) ;
 int stub6 () ;

__attribute__((used)) static void rw_interrupt(void)
{
 int eoc;
 int ssize;
 int heads;
 int nr_sectors;

 if (R_HEAD >= 2) {



  return;
 }

 if (!DRS->first_read_date)
  DRS->first_read_date = jiffies;

 nr_sectors = 0;
 ssize = DIV_ROUND_UP(1 << SIZECODE, 4);

 if (ST1 & ST1_EOC)
  eoc = 1;
 else
  eoc = 0;

 if (COMMAND & 0x80)
  heads = 2;
 else
  heads = 1;

 nr_sectors = (((R_TRACK - TRACK) * heads +
         R_HEAD - HEAD) * SECT_PER_TRACK +
        R_SECTOR - SECTOR + eoc) << SIZECODE >> 2;

 if (nr_sectors / ssize >
     DIV_ROUND_UP(in_sector_offset + current_count_sectors, ssize)) {
  DPRINT("long rw: %x instead of %lx\n",
         nr_sectors, current_count_sectors);
  pr_info("rs=%d s=%d\n", R_SECTOR, SECTOR);
  pr_info("rh=%d h=%d\n", R_HEAD, HEAD);
  pr_info("rt=%d t=%d\n", R_TRACK, TRACK);
  pr_info("heads=%d eoc=%d\n", heads, eoc);
  pr_info("spt=%d st=%d ss=%d\n",
   SECT_PER_TRACK, fsector_t, ssize);
  pr_info("in_sector_offset=%d\n", in_sector_offset);
 }

 nr_sectors -= in_sector_offset;
 INFBOUND(nr_sectors, 0);
 SUPBOUND(current_count_sectors, nr_sectors);

 switch (interpret_errors()) {
 case 2:
  cont->redo();
  return;
 case 1:
  if (!current_count_sectors) {
   cont->error();
   cont->redo();
   return;
  }
  break;
 case 0:
  if (!current_count_sectors) {
   cont->redo();
   return;
  }
  current_type[current_drive] = _floppy;
  floppy_sizes[TOMINOR(current_drive)] = _floppy->size;
  break;
 }

 if (probing) {
  if (DP->flags & FTD_MSG)
   DPRINT("Auto-detected floppy type %s in fd%d\n",
          _floppy->name, current_drive);
  current_type[current_drive] = _floppy;
  floppy_sizes[TOMINOR(current_drive)] = _floppy->size;
  probing = 0;
 }

 if (CT(COMMAND) != FD_READ ||
     raw_cmd->kernel_data == bio_data(current_req->bio)) {

  cont->done(1);
 } else if (CT(COMMAND) == FD_READ) {
  buffer_track = raw_cmd->track;
  buffer_drive = current_drive;
  INFBOUND(buffer_max, nr_sectors + fsector_t);
 }
 cont->redo();
}
