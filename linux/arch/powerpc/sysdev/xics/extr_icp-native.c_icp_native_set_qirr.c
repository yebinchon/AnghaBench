
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * bytes; } ;
struct TYPE_4__ {TYPE_1__ qirr; } ;


 TYPE_2__** icp_native_regs ;
 int out_8 (int *,int ) ;

__attribute__((used)) static inline void icp_native_set_qirr(int n_cpu, u8 value)
{
 out_8(&icp_native_regs[n_cpu]->qirr.bytes[0], value);
}
