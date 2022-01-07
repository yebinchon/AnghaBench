
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void zynq_core_pm_init(void)
{

 asm volatile ("mrc  p15, 0, r12, c15, c0, 0\n"
        "orr  r12, r12, #1\n"
        "mcr  p15, 0, r12, c15, c0, 0\n"
        :
        :
        : "r12");
}
