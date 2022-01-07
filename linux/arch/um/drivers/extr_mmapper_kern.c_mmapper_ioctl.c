
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOIOCTLCMD ;

__attribute__((used)) static long mmapper_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 return -ENOIOCTLCMD;
}
