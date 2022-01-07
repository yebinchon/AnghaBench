
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int bio; } ;
struct amiga_floppy_struct {char* trackbuf; int dirty; TYPE_2__* type; TYPE_1__* dtype; } ;
typedef int blk_status_t ;
struct TYPE_4__ {unsigned int sect_mult; } ;
struct TYPE_3__ {unsigned int sects; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 scalar_t__ READ ;
 char* bio_data (int ) ;
 unsigned int blk_rq_cur_sectors (struct request*) ;
 unsigned int blk_rq_pos (struct request*) ;
 int fd_motor_on (int) ;
 scalar_t__ flush_track_timer ;
 int get_track (int,unsigned int) ;
 scalar_t__ jiffies ;
 int memcpy (char*,char*,int) ;
 int mod_timer (scalar_t__,scalar_t__) ;
 int printk (char*,unsigned int,unsigned int,char*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 struct amiga_floppy_struct* unit ;

__attribute__((used)) static blk_status_t amiflop_rw_cur_segment(struct amiga_floppy_struct *floppy,
        struct request *rq)
{
 int drive = floppy - unit;
 unsigned int cnt, block, track, sector;
 char *data;

 for (cnt = 0; cnt < blk_rq_cur_sectors(rq); cnt++) {





  block = blk_rq_pos(rq) + cnt;
  track = block / (floppy->dtype->sects * floppy->type->sect_mult);
  sector = block % (floppy->dtype->sects * floppy->type->sect_mult);
  data = bio_data(rq->bio) + 512 * cnt;





  if (get_track(drive, track) == -1)
   return BLK_STS_IOERR;

  if (rq_data_dir(rq) == READ) {
   memcpy(data, floppy->trackbuf + sector * 512, 512);
  } else {
   memcpy(floppy->trackbuf + sector * 512, data, 512);


   if (!fd_motor_on(drive))
    return BLK_STS_IOERR;




   floppy->dirty = 1;

   mod_timer (flush_track_timer + drive, jiffies + 1);
  }
 }

 return BLK_STS_OK;
}
