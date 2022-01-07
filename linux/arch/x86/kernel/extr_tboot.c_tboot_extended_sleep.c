
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ENODEV ;
 int pr_warning (char*) ;
 int tboot_enabled () ;

__attribute__((used)) static int tboot_extended_sleep(u8 sleep_state, u32 val_a, u32 val_b)
{
 if (!tboot_enabled())
  return 0;

 pr_warning("tboot is not able to suspend on platforms with reduced hardware sleep (ACPIv5)");
 return -ENODEV;
}
