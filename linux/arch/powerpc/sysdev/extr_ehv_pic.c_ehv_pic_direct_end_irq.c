
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int MPIC_EOI ;
 scalar_t__ mpic_percpu_base_vaddr ;
 int out_be32 (scalar_t__,int ) ;

void ehv_pic_direct_end_irq(struct irq_data *d)
{
 out_be32(mpic_percpu_base_vaddr + MPIC_EOI / 4, 0);
}
