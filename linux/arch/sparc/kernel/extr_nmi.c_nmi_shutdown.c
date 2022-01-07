
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int on_each_cpu (int ,int *,int) ;
 int stop_nmi_watchdog ;

__attribute__((used)) static int nmi_shutdown(struct notifier_block *nb, unsigned long cmd, void *p)
{
 on_each_cpu(stop_nmi_watchdog, ((void*)0), 1);
 return 0;
}
