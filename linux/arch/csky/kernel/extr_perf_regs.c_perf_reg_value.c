
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct pt_regs {int dummy; } ;


 scalar_t__ PERF_REG_CSKY_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;

u64 perf_reg_value(struct pt_regs *regs, int idx)
{
 if (WARN_ON_ONCE((u32)idx >= PERF_REG_CSKY_MAX))
  return 0;

 return (u64)*((u32 *)regs + idx);
}
