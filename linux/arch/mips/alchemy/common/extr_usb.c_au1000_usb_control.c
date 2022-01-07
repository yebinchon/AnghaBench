
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int __au1xx0_ohci_control (int,unsigned long,int) ;

__attribute__((used)) static inline int au1000_usb_control(int block, int enable, unsigned long rb,
         int creg)
{
 int ret = 0;

 switch (block) {
 case 128:
  __au1xx0_ohci_control(enable, rb, creg);
  break;
 default:
  ret = -ENODEV;
 }
 return ret;
}
