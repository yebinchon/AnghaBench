
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int word; } ;
struct TYPE_4__ {TYPE_1__ xirr; } ;


 TYPE_2__** icp_native_regs ;
 int out_be32 (int *,unsigned int) ;
 int smp_processor_id () ;

__attribute__((used)) static inline void icp_native_set_xirr(unsigned int value)
{
 int cpu = smp_processor_id();

 out_be32(&icp_native_regs[cpu]->xirr.word, value);
}
