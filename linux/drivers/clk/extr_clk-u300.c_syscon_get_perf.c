
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ U300_SYSCON_CCR ;
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK ;
 int readw (scalar_t__) ;
 scalar_t__ syscon_vbase ;

__attribute__((used)) static u16 syscon_get_perf(void)
{
 u16 val;

 val = readw(syscon_vbase + U300_SYSCON_CCR);
 val &= U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK;
 return val;
}
