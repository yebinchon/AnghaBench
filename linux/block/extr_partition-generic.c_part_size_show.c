
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hd_struct* dev_to_part (struct device*) ;
 scalar_t__ part_nr_sects_read (struct hd_struct*) ;
 int sprintf (char*,char*,unsigned long long) ;

ssize_t part_size_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct hd_struct *p = dev_to_part(dev);
 return sprintf(buf, "%llu\n",(unsigned long long)part_nr_sects_read(p));
}
