
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int flush_all_to_thread (int ) ;
 int hard_irq_disable () ;

void save_processor_state(void)
{




 flush_all_to_thread(current);





}
