
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {unsigned long csr; } ;
struct TYPE_9__ {unsigned long csr; } ;
struct TYPE_8__ {unsigned long csr; } ;
struct TYPE_7__ {unsigned long csr; } ;
struct TYPE_11__ {TYPE_4__ dim3; TYPE_3__ dim2; TYPE_2__ dim1; TYPE_1__ dim0; } ;
typedef TYPE_5__ tsunami_cchip ;


 TYPE_5__* TSUNAMI_cchip ;
 int boot_cpuid ;
 unsigned long* cpu_irq_affinity ;
 int cpu_possible (int) ;
 int mb () ;

__attribute__((used)) static void
tsunami_update_irq_hw(unsigned long mask)
{
 register tsunami_cchip *cchip = TSUNAMI_cchip;
 unsigned long isa_enable = 1UL << 55;
 register int bcpu = boot_cpuid;
 volatile unsigned long *dimB;
 if (bcpu == 0) dimB = &cchip->dim0.csr;
 else if (bcpu == 1) dimB = &cchip->dim1.csr;
 else if (bcpu == 2) dimB = &cchip->dim2.csr;
 else dimB = &cchip->dim3.csr;

 *dimB = mask | isa_enable;
 mb();
 *dimB;

}
