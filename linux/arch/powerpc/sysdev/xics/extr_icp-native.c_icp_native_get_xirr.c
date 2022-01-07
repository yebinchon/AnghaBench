
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int word; } ;
struct TYPE_4__ {TYPE_1__ xirr; } ;


 TYPE_2__** icp_native_regs ;
 unsigned int in_be32 (int *) ;
 unsigned int kvmppc_get_xics_latch () ;
 int smp_processor_id () ;

__attribute__((used)) static inline unsigned int icp_native_get_xirr(void)
{
 int cpu = smp_processor_id();
 unsigned int xirr;


 xirr = kvmppc_get_xics_latch();
 if (xirr)
  return xirr;

 return in_be32(&icp_native_regs[cpu]->xirr.word);
}
