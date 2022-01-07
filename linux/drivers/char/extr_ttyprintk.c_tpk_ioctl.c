
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyprintk_port {int dummy; } ;
struct tty_struct {struct ttyprintk_port* driver_data; } ;


 int EINVAL ;
 int ENOIOCTLCMD ;
 int EOPNOTSUPP ;


__attribute__((used)) static int tpk_ioctl(struct tty_struct *tty,
   unsigned int cmd, unsigned long arg)
{
 struct ttyprintk_port *tpkp = tty->driver_data;

 if (!tpkp)
  return -EINVAL;

 switch (cmd) {

 case 128:
  return -EOPNOTSUPP;
 default:
  return -ENOIOCTLCMD;
 }
 return 0;
}
