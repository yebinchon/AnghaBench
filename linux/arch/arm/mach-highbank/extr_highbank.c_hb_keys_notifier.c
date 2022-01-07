
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct notifier_block {int dummy; } ;


 int KEY_POWER ;
 int ctrl_alt_del () ;
 int orderly_poweroff (int) ;

__attribute__((used)) static int hb_keys_notifier(struct notifier_block *nb, unsigned long event, void *data)
{
 u32 key = *(u32 *)data;

 if (event != 0x1000)
  return 0;

 if (key == KEY_POWER)
  orderly_poweroff(0);
 else if (key == 0xffff)
  ctrl_alt_del();

 return 0;
}
