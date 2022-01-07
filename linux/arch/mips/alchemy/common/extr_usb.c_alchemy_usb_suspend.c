
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alchemy_usb_pm (int) ;

__attribute__((used)) static int alchemy_usb_suspend(void)
{
 alchemy_usb_pm(1);
 return 0;
}
