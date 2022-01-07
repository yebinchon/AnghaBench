
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIE_STIE ;
 int csr_clear (int ,int ) ;
 int sie ;

__attribute__((used)) static int riscv_timer_dying_cpu(unsigned int cpu)
{
 csr_clear(sie, SIE_STIE);
 return 0;
}
