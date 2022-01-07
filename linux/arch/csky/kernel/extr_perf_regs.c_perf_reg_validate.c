
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 int REG_RESERVED ;

int perf_reg_validate(u64 mask)
{
 if (!mask || mask & REG_RESERVED)
  return -EINVAL;

 return 0;
}
