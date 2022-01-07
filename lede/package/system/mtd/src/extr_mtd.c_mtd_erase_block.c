
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erase_info_user {int start; int length; } ;


 int MEMERASE ;
 int MEMUNLOCK ;
 int erasesize ;
 scalar_t__ ioctl (int,int ,struct erase_info_user*) ;

int mtd_erase_block(int fd, int offset)
{
 struct erase_info_user mtdEraseInfo;

 mtdEraseInfo.start = offset;
 mtdEraseInfo.length = erasesize;
 ioctl(fd, MEMUNLOCK, &mtdEraseInfo);
 if (ioctl (fd, MEMERASE, &mtdEraseInfo) < 0)
  return -1;

 return 0;
}
