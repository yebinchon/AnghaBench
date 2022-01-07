
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int cell_virtual_cntr ;
 scalar_t__ jiffies ;
 int timer_setup (TYPE_1__*,int ,int ) ;
 TYPE_1__ timer_virt_cntr ;

__attribute__((used)) static void start_virt_cntrs(void)
{
 timer_setup(&timer_virt_cntr, cell_virtual_cntr, 0);
 timer_virt_cntr.expires = jiffies + HZ / 10;
 add_timer(&timer_virt_cntr);
}
