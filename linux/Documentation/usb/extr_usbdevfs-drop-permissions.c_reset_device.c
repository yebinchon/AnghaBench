
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USBDEVFS_RESET ;
 int ioctl (int,int ) ;
 int printf (char*,...) ;
 char* strerror (int) ;

void reset_device(int fd)
{
 int res;

 res = ioctl(fd, USBDEVFS_RESET);
 if (!res)
  printf("OK: USBDEVFS_RESET succeeded\n");
 else
  printf("ERROR: reset failed! (%d - %s)\n",
         -res, strerror(-res));
}
