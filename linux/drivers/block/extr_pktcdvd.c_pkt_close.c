
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {scalar_t__ refcnt; int flags; } ;
struct gendisk {struct pktcdvd_device* private_data; } ;
typedef int fmode_t ;


 int BUG_ON (int) ;
 int PACKET_WRITABLE ;
 int ctl_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pkt_release_dev (struct pktcdvd_device*,int) ;
 int pktcdvd_mutex ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void pkt_close(struct gendisk *disk, fmode_t mode)
{
 struct pktcdvd_device *pd = disk->private_data;

 mutex_lock(&pktcdvd_mutex);
 mutex_lock(&ctl_mutex);
 pd->refcnt--;
 BUG_ON(pd->refcnt < 0);
 if (pd->refcnt == 0) {
  int flush = test_bit(PACKET_WRITABLE, &pd->flags);
  pkt_release_dev(pd, flush);
 }
 mutex_unlock(&ctl_mutex);
 mutex_unlock(&pktcdvd_mutex);
}
