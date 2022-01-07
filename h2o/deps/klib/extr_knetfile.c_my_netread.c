
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int netread (int,void*,int) ;
 scalar_t__ socket_wait (int,int) ;

__attribute__((used)) static off_t my_netread(int fd, void *buf, off_t len)
{
 off_t rest = len, curr, l = 0;


 while (rest) {
  if (socket_wait(fd, 1) <= 0) break;
  curr = netread(fd, buf + l, rest);




  if (curr == 0) break;
  l += curr; rest -= curr;
 }
 return l;
}
