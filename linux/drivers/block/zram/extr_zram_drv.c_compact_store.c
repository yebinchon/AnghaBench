
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int init_lock; int mem_pool; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct zram* dev_to_zram (struct device*) ;
 int down_read (int *) ;
 int init_done (struct zram*) ;
 int up_read (int *) ;
 int zs_compact (int ) ;

__attribute__((used)) static ssize_t compact_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 struct zram *zram = dev_to_zram(dev);

 down_read(&zram->init_lock);
 if (!init_done(zram)) {
  up_read(&zram->init_lock);
  return -EINVAL;
 }

 zs_compact(zram->mem_pool);
 up_read(&zram->init_lock);

 return len;
}
