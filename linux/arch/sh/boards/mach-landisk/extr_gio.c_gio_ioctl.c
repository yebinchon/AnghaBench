
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long EFAULT ;







 unsigned int __raw_readb (unsigned int) ;
 unsigned int __raw_readl (unsigned int) ;
 unsigned int __raw_readw (unsigned int) ;
 int __raw_writeb (unsigned char,unsigned int) ;
 int __raw_writel (unsigned int,unsigned int) ;
 int __raw_writew (unsigned short,unsigned int) ;
 scalar_t__ copy_from_user (unsigned int*,int*,int) ;
 scalar_t__ copy_to_user (int*,unsigned int*,int) ;

__attribute__((used)) static long gio_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
 unsigned int data;
 static unsigned int addr = 0;

 if (cmd & 0x01) {
  if (copy_from_user(&data, (int *)arg, sizeof(int))) {
   return -EFAULT;
  }
 }

 switch (cmd) {
 case 128:
  addr = data;
  break;

 case 131:
  __raw_writeb((unsigned char)(0x0ff & data), addr);
  break;

 case 130:
  if (addr & 0x01) {
   return -EFAULT;
  }
  __raw_writew((unsigned short int)(0x0ffff & data), addr);
  break;

 case 129:
  if (addr & 0x03) {
   return -EFAULT;
  }
  __raw_writel(data, addr);
  break;

 case 134:
  data = __raw_readb(addr);
  break;

 case 133:
  if (addr & 0x01) {
   return -EFAULT;
  }
  data = __raw_readw(addr);
  break;

 case 132:
  if (addr & 0x03) {
   return -EFAULT;
  }
  data = __raw_readl(addr);
  break;
 default:
  return -EFAULT;
  break;
 }

 if ((cmd & 0x01) == 0) {
  if (copy_to_user((int *)arg, &data, sizeof(int))) {
   return -EFAULT;
  }
 }
 return 0;
}
