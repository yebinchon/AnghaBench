
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imr_regs {int addr_hi; int addr_lo; } ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ imr_to_phys (int ) ;

__attribute__((used)) static inline int imr_address_overlap(phys_addr_t addr, struct imr_regs *imr)
{
 return addr >= imr_to_phys(imr->addr_lo) && addr <= imr_to_phys(imr->addr_hi);
}
