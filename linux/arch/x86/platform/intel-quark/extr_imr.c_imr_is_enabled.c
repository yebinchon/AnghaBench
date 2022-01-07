
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imr_regs {scalar_t__ rmask; scalar_t__ wmask; int addr_hi; int addr_lo; } ;


 scalar_t__ IMR_READ_ACCESS_ALL ;
 scalar_t__ IMR_WRITE_ACCESS_ALL ;
 scalar_t__ imr_to_phys (int ) ;

__attribute__((used)) static inline int imr_is_enabled(struct imr_regs *imr)
{
 return !(imr->rmask == IMR_READ_ACCESS_ALL &&
   imr->wmask == IMR_WRITE_ACCESS_ALL &&
   imr_to_phys(imr->addr_lo) == 0 &&
   imr_to_phys(imr->addr_hi) == 0);
}
