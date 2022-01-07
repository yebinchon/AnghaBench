
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int init_lock; int compressor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct zram* dev_to_zram (struct device*) ;
 int down_read (int *) ;
 int up_read (int *) ;
 size_t zcomp_available_show (int ,char*) ;

__attribute__((used)) static ssize_t comp_algorithm_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 size_t sz;
 struct zram *zram = dev_to_zram(dev);

 down_read(&zram->init_lock);
 sz = zcomp_available_show(zram->compressor, buf);
 up_read(&zram->init_lock);

 return sz;
}
