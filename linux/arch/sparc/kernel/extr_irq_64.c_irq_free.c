
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_free_descs (unsigned int,int) ;
 void* irq_get_handler_data (unsigned int) ;
 int irq_set_handler_data (unsigned int,int *) ;
 int kfree (void*) ;

void irq_free(unsigned int irq)
{
 void *data = irq_get_handler_data(irq);

 kfree(data);
 irq_set_handler_data(irq, ((void*)0));
 irq_free_descs(irq, 1);
}
