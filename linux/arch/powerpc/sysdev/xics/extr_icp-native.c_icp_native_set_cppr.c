
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * bytes; } ;
struct TYPE_4__ {TYPE_1__ xirr; } ;


 TYPE_2__** icp_native_regs ;
 int out_8 (int *,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static inline void icp_native_set_cppr(u8 value)
{
 int cpu = smp_processor_id();

 out_8(&icp_native_regs[cpu]->xirr.bytes[0], value);
}
