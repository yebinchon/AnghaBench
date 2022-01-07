
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int get_cycles64 () ;

__attribute__((used)) static u64 riscv_sched_clock(void)
{
 return get_cycles64();
}
