
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;


 int stdma_try_lock (int ,void*) ;
 int stdma_wait ;
 int wait_event (int ,int ) ;

void stdma_lock(irq_handler_t handler, void *data)
{



 wait_event(stdma_wait, stdma_try_lock(handler, data));
}
