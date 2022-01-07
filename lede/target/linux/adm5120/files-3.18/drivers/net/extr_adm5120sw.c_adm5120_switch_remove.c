
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int adm5120_switch_cleanup () ;

__attribute__((used)) static int adm5120_switch_remove(struct platform_device *pdev)
{
 adm5120_switch_cleanup();
 return 0;
}
