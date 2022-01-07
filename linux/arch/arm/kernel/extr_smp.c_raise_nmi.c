
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int IPI_CPU_BACKTRACE ;
 int __smp_cross_call (int *,int ) ;

__attribute__((used)) static void raise_nmi(cpumask_t *mask)
{
 __smp_cross_call(mask, IPI_CPU_BACKTRACE);
}
