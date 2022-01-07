
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 long DIV_ROUND_UP_ULL (unsigned int,unsigned long) ;
 long EINVAL ;
 unsigned int N2_MIN ;
 unsigned int SDM_DEN ;

__attribute__((used)) static long rate_from_params(unsigned long parent_rate,
        unsigned int sdm,
        unsigned int n2)
{
 unsigned long divisor = (SDM_DEN * n2) + sdm;

 if (n2 < N2_MIN)
  return -EINVAL;

 return DIV_ROUND_UP_ULL((u64)parent_rate * SDM_DEN, divisor);
}
