
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int notify_free; int invalid_io; int failed_writes; int failed_reads; } ;
struct zram {int init_lock; TYPE_1__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ atomic64_read (int *) ;
 struct zram* dev_to_zram (struct device*) ;
 int down_read (int *) ;
 int scnprintf (char*,int ,char*,int ,int ,int ,int ) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t io_stat_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct zram *zram = dev_to_zram(dev);
 ssize_t ret;

 down_read(&zram->init_lock);
 ret = scnprintf(buf, PAGE_SIZE,
   "%8llu %8llu %8llu %8llu\n",
   (u64)atomic64_read(&zram->stats.failed_reads),
   (u64)atomic64_read(&zram->stats.failed_writes),
   (u64)atomic64_read(&zram->stats.invalid_io),
   (u64)atomic64_read(&zram->stats.notify_free));
 up_read(&zram->init_lock);

 return ret;
}
