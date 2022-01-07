
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int refcnt; int flags; } ;
struct block_device {int bd_dev; } ;
typedef int fmode_t ;


 int BUG_ON (int) ;
 int CD_FRAMESIZE ;
 int EBUSY ;
 int ENODEV ;
 int FMODE_WRITE ;
 int MINOR (int ) ;
 int PACKET_WRITABLE ;
 int ctl_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pktcdvd_device* pkt_find_dev_from_minor (int ) ;
 int pkt_open_dev (struct pktcdvd_device*,int) ;
 int pktcdvd_mutex ;
 int set_blocksize (struct block_device*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int pkt_open(struct block_device *bdev, fmode_t mode)
{
 struct pktcdvd_device *pd = ((void*)0);
 int ret;

 mutex_lock(&pktcdvd_mutex);
 mutex_lock(&ctl_mutex);
 pd = pkt_find_dev_from_minor(MINOR(bdev->bd_dev));
 if (!pd) {
  ret = -ENODEV;
  goto out;
 }
 BUG_ON(pd->refcnt < 0);

 pd->refcnt++;
 if (pd->refcnt > 1) {
  if ((mode & FMODE_WRITE) &&
      !test_bit(PACKET_WRITABLE, &pd->flags)) {
   ret = -EBUSY;
   goto out_dec;
  }
 } else {
  ret = pkt_open_dev(pd, mode & FMODE_WRITE);
  if (ret)
   goto out_dec;




  set_blocksize(bdev, CD_FRAMESIZE);
 }

 mutex_unlock(&ctl_mutex);
 mutex_unlock(&pktcdvd_mutex);
 return 0;

out_dec:
 pd->refcnt--;
out:
 mutex_unlock(&ctl_mutex);
 mutex_unlock(&pktcdvd_mutex);
 return ret;
}
