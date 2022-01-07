
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpic_reg_bank {int * base; } ;
struct mpic {int dummy; } ;
typedef scalar_t__ phys_addr_t ;


 int BUG_ON (int ) ;
 int * ioremap (scalar_t__,unsigned int) ;

__attribute__((used)) static void _mpic_map_mmio(struct mpic *mpic, phys_addr_t phys_addr,
      struct mpic_reg_bank *rb, unsigned int offset,
      unsigned int size)
{
 rb->base = ioremap(phys_addr + offset, size);
 BUG_ON(rb->base == ((void*)0));
}
