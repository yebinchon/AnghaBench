
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __raw_writeq (int,int ) ;
 int * mailbox_0_set_regs ;

__attribute__((used)) static void bcm1480_send_ipi_single(int cpu, unsigned int action)
{
 __raw_writeq((((u64)action)<< 48), mailbox_0_set_regs[cpu]);
}
