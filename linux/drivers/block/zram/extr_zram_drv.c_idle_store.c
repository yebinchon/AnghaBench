
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {unsigned long disksize; int init_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long PAGE_SHIFT ;
 int ZRAM_IDLE ;
 int ZRAM_UNDER_WB ;
 struct zram* dev_to_zram (struct device*) ;
 int down_read (int *) ;
 int init_done (struct zram*) ;
 int sysfs_streq (char const*,char*) ;
 int up_read (int *) ;
 scalar_t__ zram_allocated (struct zram*,int) ;
 int zram_set_flag (struct zram*,int,int ) ;
 int zram_slot_lock (struct zram*,int) ;
 int zram_slot_unlock (struct zram*,int) ;
 int zram_test_flag (struct zram*,int,int ) ;

__attribute__((used)) static ssize_t idle_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 struct zram *zram = dev_to_zram(dev);
 unsigned long nr_pages = zram->disksize >> PAGE_SHIFT;
 int index;

 if (!sysfs_streq(buf, "all"))
  return -EINVAL;

 down_read(&zram->init_lock);
 if (!init_done(zram)) {
  up_read(&zram->init_lock);
  return -EINVAL;
 }

 for (index = 0; index < nr_pages; index++) {




  zram_slot_lock(zram, index);
  if (zram_allocated(zram, index) &&
    !zram_test_flag(zram, index, ZRAM_UNDER_WB))
   zram_set_flag(zram, index, ZRAM_IDLE);
  zram_slot_unlock(zram, index);
 }

 up_read(&zram->init_lock);

 return len;
}
