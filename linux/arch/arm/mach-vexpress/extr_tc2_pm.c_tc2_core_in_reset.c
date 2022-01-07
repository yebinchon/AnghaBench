
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RESET_A15_NCORERESET (unsigned int) ;
 int RESET_A7_NCORERESET (unsigned int) ;
 scalar_t__ RESET_CTRL ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ scc ;

__attribute__((used)) static int tc2_core_in_reset(unsigned int cpu, unsigned int cluster)
{
 u32 mask = cluster ?
    RESET_A7_NCORERESET(cpu)
  : RESET_A15_NCORERESET(cpu);

 return !(readl_relaxed(scc + RESET_CTRL) & mask);
}
