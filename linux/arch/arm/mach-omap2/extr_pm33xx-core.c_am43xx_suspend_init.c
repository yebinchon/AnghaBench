
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int am43xx_map_scu () ;
 int amx3_common_init () ;
 int pr_err (char*) ;

__attribute__((used)) static int am43xx_suspend_init(void)
{
 int ret = 0;

 ret = am43xx_map_scu();
 if (ret) {
  pr_err("PM: Could not ioremap SCU\n");
  return ret;
 }

 ret = amx3_common_init();

 return ret;
}
