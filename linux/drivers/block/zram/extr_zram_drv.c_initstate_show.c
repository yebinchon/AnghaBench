
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zram {int init_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct zram* dev_to_zram (struct device*) ;
 int down_read (int *) ;
 int init_done (struct zram*) ;
 int scnprintf (char*,int ,char*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t initstate_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 u32 val;
 struct zram *zram = dev_to_zram(dev);

 down_read(&zram->init_lock);
 val = init_done(zram);
 up_read(&zram->init_lock);

 return scnprintf(buf, PAGE_SIZE, "%u\n", val);
}
