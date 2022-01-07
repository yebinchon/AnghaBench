
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIU3_MBOX_PER_CORE ;

__attribute__((used)) static unsigned int octeon_irq_ciu3_base_mbox_intsn(int core)
{

 return 0x04000 + CIU3_MBOX_PER_CORE * core;
}
