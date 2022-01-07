
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_disable () ;

void ist_end_non_atomic(void)
{
 preempt_disable();
}
