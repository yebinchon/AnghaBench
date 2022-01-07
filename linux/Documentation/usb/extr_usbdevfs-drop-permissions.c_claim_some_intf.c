
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USBDEVFS_CLAIMINTERFACE ;
 int ioctl (int,int ,int*) ;
 int printf (char*,int,...) ;
 char* strerror (int) ;

void claim_some_intf(int fd)
{
 int i, res;

 for (i = 0; i < 4; i++) {
  res = ioctl(fd, USBDEVFS_CLAIMINTERFACE, &i);
  if (!res)
   printf("OK: claimed if %d\n", i);
  else
   printf("ERROR claiming if %d (%d - %s)\n",
          i, -res, strerror(-res));
 }
}
