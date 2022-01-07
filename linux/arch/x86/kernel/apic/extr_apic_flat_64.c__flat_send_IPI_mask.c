
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dest_logical; } ;


 int __default_send_IPI_dest_field (unsigned long,int,int ) ;
 TYPE_1__* apic ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void _flat_send_IPI_mask(unsigned long mask, int vector)
{
 unsigned long flags;

 local_irq_save(flags);
 __default_send_IPI_dest_field(mask, vector, apic->dest_logical);
 local_irq_restore(flags);
}
