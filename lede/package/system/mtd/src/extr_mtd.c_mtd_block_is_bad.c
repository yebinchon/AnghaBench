
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int MEMGETBADBLOCK ;
 scalar_t__ MTD_NANDFLASH ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int ioctl (int,int ,int*) ;
 scalar_t__ mtdtype ;
 int stderr ;

int mtd_block_is_bad(int fd, int offset)
{
 int r = 0;
 loff_t o = offset;

 if (mtdtype == MTD_NANDFLASH)
 {
  r = ioctl(fd, MEMGETBADBLOCK, &o);
  if (r < 0)
  {
   fprintf(stderr, "Failed to get erase block status\n");
   exit(1);
  }
 }
 return r;
}
