
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int miss_free; int writestall; } ;
struct zram {int init_lock; TYPE_1__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ atomic64_read (int *) ;
 struct zram* dev_to_zram (struct device*) ;
 int down_read (int *) ;
 int scnprintf (char*,int ,char*,int,int ,int ) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t debug_stat_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 int version = 1;
 struct zram *zram = dev_to_zram(dev);
 ssize_t ret;

 down_read(&zram->init_lock);
 ret = scnprintf(buf, PAGE_SIZE,
   "version: %d\n%8llu %8llu\n",
   version,
   (u64)atomic64_read(&zram->stats.writestall),
   (u64)atomic64_read(&zram->stats.miss_free));
 up_read(&zram->init_lock);

 return ret;
}
