
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int cb_restart () ;
 scalar_t__ reg_restart ;
 scalar_t__ rst_base ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int rockchip_restart_notify(struct notifier_block *this,
       unsigned long mode, void *cmd)
{
 if (cb_restart)
  cb_restart();

 writel(0xfdb9, rst_base + reg_restart);
 return NOTIFY_DONE;
}
