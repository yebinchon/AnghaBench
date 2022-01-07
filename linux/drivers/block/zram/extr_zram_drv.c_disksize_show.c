
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int disksize; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct zram* dev_to_zram (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t disksize_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct zram *zram = dev_to_zram(dev);

 return scnprintf(buf, PAGE_SIZE, "%llu\n", zram->disksize);
}
