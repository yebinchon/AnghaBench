
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int claim; int disk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct block_device {int bd_mutex; scalar_t__ bd_openers; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 struct block_device* bdget_disk (int ,int ) ;
 int bdput (struct block_device*) ;
 struct zram* dev_to_zram (struct device*) ;
 int fsync_bdev (struct block_device*) ;
 int kstrtou16 (char const*,int,unsigned short*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int revalidate_disk (int ) ;
 int zram_reset_device (struct zram*) ;

__attribute__((used)) static ssize_t reset_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 int ret;
 unsigned short do_reset;
 struct zram *zram;
 struct block_device *bdev;

 ret = kstrtou16(buf, 10, &do_reset);
 if (ret)
  return ret;

 if (!do_reset)
  return -EINVAL;

 zram = dev_to_zram(dev);
 bdev = bdget_disk(zram->disk, 0);
 if (!bdev)
  return -ENOMEM;

 mutex_lock(&bdev->bd_mutex);

 if (bdev->bd_openers || zram->claim) {
  mutex_unlock(&bdev->bd_mutex);
  bdput(bdev);
  return -EBUSY;
 }


 zram->claim = 1;
 mutex_unlock(&bdev->bd_mutex);


 fsync_bdev(bdev);
 zram_reset_device(zram);
 revalidate_disk(zram->disk);
 bdput(bdev);

 mutex_lock(&bdev->bd_mutex);
 zram->claim = 0;
 mutex_unlock(&bdev->bd_mutex);

 return len;
}
