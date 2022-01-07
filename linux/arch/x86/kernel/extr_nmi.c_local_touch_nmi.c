
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __this_cpu_write (int ,int ) ;
 int last_nmi_rip ;

void local_touch_nmi(void)
{
 __this_cpu_write(last_nmi_rip, 0);
}
