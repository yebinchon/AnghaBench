
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int vbits; scalar_t__ tto; } ;


 int ENODATA ;
 int sprintf (char*,char*,int) ;
 TYPE_1__ stp_info ;
 int stp_online ;

__attribute__((used)) static ssize_t stp_time_offset_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 if (!stp_online || !(stp_info.vbits & 0x0800))
  return -ENODATA;
 return sprintf(buf, "%i\n", (int) stp_info.tto);
}
