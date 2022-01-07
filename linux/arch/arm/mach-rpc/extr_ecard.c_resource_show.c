
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expansion_card {TYPE_1__* resource; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int start; int end; int flags; } ;


 struct expansion_card* ECARD_DEV (struct device*) ;
 int ECARD_NUM_RESOURCES ;
 int sprintf (char*,char*,int,int,int ) ;

__attribute__((used)) static ssize_t resource_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct expansion_card *ec = ECARD_DEV(dev);
 char *str = buf;
 int i;

 for (i = 0; i < ECARD_NUM_RESOURCES; i++)
  str += sprintf(str, "%08x %08x %08lx\n",
    ec->resource[i].start,
    ec->resource[i].end,
    ec->resource[i].flags);

 return str - buf;
}
