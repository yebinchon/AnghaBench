
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int octeon_irq_ip4_handler_t ;


 int octeon_irq_ip4 ;
 int octeon_irq_local_enable_ip4 ;
 int octeon_irq_use_ip4 ;
 int on_each_cpu (int ,int *,int) ;

void octeon_irq_set_ip4_handler(octeon_irq_ip4_handler_t h)
{
 octeon_irq_ip4 = h;
 octeon_irq_use_ip4 = 1;
 on_each_cpu(octeon_irq_local_enable_ip4, ((void*)0), 1);
}
