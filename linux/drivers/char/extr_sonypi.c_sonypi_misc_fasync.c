
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int fifo_async; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 TYPE_1__ sonypi_device ;

__attribute__((used)) static int sonypi_misc_fasync(int fd, struct file *filp, int on)
{
 return fasync_helper(fd, filp, on, &sonypi_device.fifo_async);
}
