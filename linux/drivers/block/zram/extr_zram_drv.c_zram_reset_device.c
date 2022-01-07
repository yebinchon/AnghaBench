
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct zram {int stats; int init_lock; TYPE_1__* disk; scalar_t__ disksize; struct zcomp* comp; scalar_t__ limit_pages; } ;
struct zcomp {int dummy; } ;
struct TYPE_2__ {int part0; } ;


 int down_write (int *) ;
 int init_done (struct zram*) ;
 int memset (int *,int ,int) ;
 int part_stat_set_all (int *,int ) ;
 int reset_bdev (struct zram*) ;
 int set_capacity (TYPE_1__*,int ) ;
 int up_write (int *) ;
 int zcomp_destroy (struct zcomp*) ;
 int zram_meta_free (struct zram*,scalar_t__) ;

__attribute__((used)) static void zram_reset_device(struct zram *zram)
{
 struct zcomp *comp;
 u64 disksize;

 down_write(&zram->init_lock);

 zram->limit_pages = 0;

 if (!init_done(zram)) {
  up_write(&zram->init_lock);
  return;
 }

 comp = zram->comp;
 disksize = zram->disksize;
 zram->disksize = 0;

 set_capacity(zram->disk, 0);
 part_stat_set_all(&zram->disk->part0, 0);

 up_write(&zram->init_lock);

 zram_meta_free(zram, disksize);
 memset(&zram->stats, 0, sizeof(zram->stats));
 zcomp_destroy(comp);
 reset_bdev(zram);
}
