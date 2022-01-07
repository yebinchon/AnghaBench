
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip_proto {int obuf; } ;


 int net_write (int,int ,int) ;
 int slip_esc (void*,int ,int) ;

int slip_proto_write(int fd, void *buf, int len, struct slip_proto *slip)
{
 int actual, n;

 actual = slip_esc(buf, slip->obuf, len);
 n = net_write(fd, slip->obuf, actual);
 if(n < 0)
  return n;
 else return len;
}
