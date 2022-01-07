
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int intr_coalescing_count ;
 int intr_coalescing_ticks ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t fsl_sata_intr_coalescing_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%d	%d\n",
   intr_coalescing_count, intr_coalescing_ticks);
}
