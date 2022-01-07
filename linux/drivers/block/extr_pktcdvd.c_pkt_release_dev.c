
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int bdev; } ;


 int FMODE_EXCL ;
 int FMODE_READ ;
 int MAX_SPEED ;
 int blkdev_put (int ,int) ;
 int pkt_dbg (int,struct pktcdvd_device*,char*) ;
 scalar_t__ pkt_flush_cache (struct pktcdvd_device*) ;
 int pkt_lock_door (struct pktcdvd_device*,int ) ;
 int pkt_set_speed (struct pktcdvd_device*,int ,int ) ;
 int pkt_shrink_pktlist (struct pktcdvd_device*) ;

__attribute__((used)) static void pkt_release_dev(struct pktcdvd_device *pd, int flush)
{
 if (flush && pkt_flush_cache(pd))
  pkt_dbg(1, pd, "not flushing cache\n");

 pkt_lock_door(pd, 0);

 pkt_set_speed(pd, MAX_SPEED, MAX_SPEED);
 blkdev_put(pd->bdev, FMODE_READ | FMODE_EXCL);

 pkt_shrink_pktlist(pd);
}
