
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int MSC0 ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int spitz_poweroff () ;

__attribute__((used)) static void spitz_restart(enum reboot_mode mode, const char *cmd)
{
 uint32_t msc0 = __raw_readl(MSC0);

 if ((msc0 & 0xffff0000) == 0x7ff00000)
  __raw_writel((msc0 & 0xffff) | 0x7ee00000, MSC0);

 spitz_poweroff();
}
