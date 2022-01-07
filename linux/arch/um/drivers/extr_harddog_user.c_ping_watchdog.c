
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c ;


 int EIO ;
 int errno ;
 int printk (char*,int,int ) ;
 int write (int,char*,int) ;

int ping_watchdog(int fd)
{
 int n;
 char c = '\n';

 n = write(fd, &c, sizeof(c));
 if (n != sizeof(c)) {
  printk("ping_watchdog - write failed, ret = %d, err = %d\n",
         n, errno);
  if (n < 0)
   return n;
  return -EIO;
 }
 return 1;

}
