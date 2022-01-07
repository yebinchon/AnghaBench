
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int USBDEVFS_DROP_PRIVILEGES ;
 int ioctl (int,int ,int *) ;
 int printf (char*,...) ;

void drop_privileges(int fd, uint32_t mask)
{
 int res;

 res = ioctl(fd, USBDEVFS_DROP_PRIVILEGES, &mask);
 if (res)
  printf("ERROR: USBDEVFS_DROP_PRIVILEGES returned %d\n", res);
 else
  printf("OK: privileges dropped!\n");
}
