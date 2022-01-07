
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_6__ {int size; } ;
struct pktcdvd_device {TYPE_2__* bdev; int flags; TYPE_1__ settings; int disk; } ;
typedef int loff_t ;
typedef scalar_t__ fmode_t ;
struct TYPE_7__ {int bd_disk; int bd_dev; } ;


 int CONFIG_CDROM_PKTCDVD_BUFFERS ;
 int ENOMEM ;
 int FMODE_EXCL ;
 int FMODE_READ ;
 int MAX_SPEED ;
 int PACKET_WRITABLE ;
 int bd_set_size (TYPE_2__*,int) ;
 struct request_queue* bdev_get_queue (TYPE_2__*) ;
 int bdget (int ) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int ) ;
 int blkdev_get (TYPE_2__*,int,struct pktcdvd_device*) ;
 int blkdev_put (TYPE_2__*,int) ;
 int clear_bit (int ,int *) ;
 int pkt_err (struct pktcdvd_device*,char*) ;
 int pkt_get_last_written (struct pktcdvd_device*,long*) ;
 int pkt_grow_pktlist (struct pktcdvd_device*,int ) ;
 int pkt_info (struct pktcdvd_device*,char*,long) ;
 int pkt_open_write (struct pktcdvd_device*) ;
 int pkt_set_segment_merging (struct pktcdvd_device*,struct request_queue*) ;
 int pkt_set_speed (struct pktcdvd_device*,int ,int ) ;
 int set_bit (int ,int *) ;
 int set_capacity (int ,long) ;

__attribute__((used)) static int pkt_open_dev(struct pktcdvd_device *pd, fmode_t write)
{
 int ret;
 long lba;
 struct request_queue *q;






 bdget(pd->bdev->bd_dev);
 ret = blkdev_get(pd->bdev, FMODE_READ | FMODE_EXCL, pd);
 if (ret)
  goto out;

 ret = pkt_get_last_written(pd, &lba);
 if (ret) {
  pkt_err(pd, "pkt_get_last_written failed\n");
  goto out_putdev;
 }

 set_capacity(pd->disk, lba << 2);
 set_capacity(pd->bdev->bd_disk, lba << 2);
 bd_set_size(pd->bdev, (loff_t)lba << 11);

 q = bdev_get_queue(pd->bdev);
 if (write) {
  ret = pkt_open_write(pd);
  if (ret)
   goto out_putdev;




  blk_queue_max_hw_sectors(q, pd->settings.size);
  set_bit(PACKET_WRITABLE, &pd->flags);
 } else {
  pkt_set_speed(pd, MAX_SPEED, MAX_SPEED);
  clear_bit(PACKET_WRITABLE, &pd->flags);
 }

 ret = pkt_set_segment_merging(pd, q);
 if (ret)
  goto out_putdev;

 if (write) {
  if (!pkt_grow_pktlist(pd, CONFIG_CDROM_PKTCDVD_BUFFERS)) {
   pkt_err(pd, "not enough memory for buffers\n");
   ret = -ENOMEM;
   goto out_putdev;
  }
  pkt_info(pd, "%lukB available on disc\n", lba << 1);
 }

 return 0;

out_putdev:
 blkdev_put(pd->bdev, FMODE_READ | FMODE_EXCL);
out:
 return ret;
}
