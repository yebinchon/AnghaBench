
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
typedef TYPE_5__ titan_cchip ;
typedef int cpumask_t ;


 TYPE_5__* TITAN_cchip ;
 int boot_cpuid ;
 int cpu_present_mask ;
 int cpumask_copy (int *,int ) ;
 int cpumask_test_cpu (int,int *) ;
 int mb () ;
 unsigned long* titan_cpu_irq_affinity ;

__attribute__((used)) static void
titan_update_irq_hw(unsigned long mask)
{
 register titan_cchip *cchip = TITAN_cchip;
 unsigned long isa_enable = 1UL << 55;
 register int bcpu = boot_cpuid;
 volatile unsigned long *dimB;
 dimB = &cchip->dim0.csr;
 if (bcpu == 1) dimB = &cchip->dim1.csr;
 else if (bcpu == 2) dimB = &cchip->dim2.csr;
 else if (bcpu == 3) dimB = &cchip->dim3.csr;

 *dimB = mask | isa_enable;
 mb();
 *dimB;

}
