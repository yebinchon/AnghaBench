
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int preempt_disable () ;
 int preempt_enable () ;
 int speculation_ctrl_update (int ) ;
 int speculation_ctrl_update_tif (int ) ;

void speculation_ctrl_update_current(void)
{
 preempt_disable();
 speculation_ctrl_update(speculation_ctrl_update_tif(current));
 preempt_enable();
}
