
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_used_pages; } ;
struct zram {int init_lock; int mem_pool; TYPE_1__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int atomic_long_set (int *,int ) ;
 struct zram* dev_to_zram (struct device*) ;
 int down_read (int *) ;
 scalar_t__ init_done (struct zram*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int up_read (int *) ;
 int zs_get_total_pages (int ) ;

__attribute__((used)) static ssize_t mem_used_max_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 int err;
 unsigned long val;
 struct zram *zram = dev_to_zram(dev);

 err = kstrtoul(buf, 10, &val);
 if (err || val != 0)
  return -EINVAL;

 down_read(&zram->init_lock);
 if (init_done(zram)) {
  atomic_long_set(&zram->stats.max_used_pages,
    zs_get_total_pages(zram->mem_pool));
 }
 up_read(&zram->init_lock);

 return len;
}
