
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbentry {int bus_num; int dev_num; char* product_name; } ;
typedef int path ;


 int O_WRONLY ;
 int PATH_MAX ;
 int USBDEVFS_RESET ;
 int close (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int ) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,int,int) ;
 char* strerror (int ) ;

__attribute__((used)) static void reset_device(struct usbentry *dev)
{
 int fd;
 char path[PATH_MAX];

 snprintf(path, sizeof(path) - 1, "/dev/bus/usb/%03d/%03d",
          dev->bus_num, dev->dev_num);

 printf("Resetting %s ... ", dev->product_name);

 if ((fd = open(path, O_WRONLY)) > -1)
 {
  if (ioctl(fd, USBDEVFS_RESET, 0) < 0)
   printf("failed [%s]\n", strerror(errno));
  else
   printf("ok\n");

  close(fd);
 }
 else
 {
  printf("can't open [%s]\n", strerror(errno));
 }
}
