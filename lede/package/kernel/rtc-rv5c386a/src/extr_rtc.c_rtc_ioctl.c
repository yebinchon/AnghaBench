
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long rtc_do_ioctl (unsigned int,unsigned long) ;

__attribute__((used)) static long rtc_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 long ret;
 ret = rtc_do_ioctl(cmd, arg);
 return ret;
}
