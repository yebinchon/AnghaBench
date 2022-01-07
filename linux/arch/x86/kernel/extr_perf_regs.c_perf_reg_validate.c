
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 int PERF_REG_X86_RESERVED ;
 int REG_NOSUPPORT ;

int perf_reg_validate(u64 mask)
{
 if (!mask || (mask & (REG_NOSUPPORT | PERF_REG_X86_RESERVED)))
  return -EINVAL;

 return 0;
}
