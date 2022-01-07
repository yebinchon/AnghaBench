
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETIME ;
 unsigned long HZ ;
 scalar_t__ PMSU_EVENT_STATUS_AND_MASK (int) ;
 int PMSU_EVENT_STATUS_AND_MASK_DFS_DONE ;
 int PMSU_EVENT_STATUS_AND_MASK_DFS_DONE_MASK ;
 int cpu_logical_map (int) ;
 unsigned long jiffies ;
 int mvebu_pmsu_dfs_request_local ;
 scalar_t__ pmsu_mp_base ;
 int readl (scalar_t__) ;
 int smp_call_function_single (int,int ,int *,int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

int mvebu_pmsu_dfs_request(int cpu)
{
 unsigned long timeout;
 int hwcpu = cpu_logical_map(cpu);
 u32 reg;


 reg = readl(pmsu_mp_base + PMSU_EVENT_STATUS_AND_MASK(hwcpu));
 reg &= ~PMSU_EVENT_STATUS_AND_MASK_DFS_DONE;
 writel(reg, pmsu_mp_base + PMSU_EVENT_STATUS_AND_MASK(hwcpu));


 reg = readl(pmsu_mp_base + PMSU_EVENT_STATUS_AND_MASK(hwcpu));
 reg |= PMSU_EVENT_STATUS_AND_MASK_DFS_DONE_MASK;
 writel(reg, pmsu_mp_base + PMSU_EVENT_STATUS_AND_MASK(hwcpu));


 smp_call_function_single(cpu, mvebu_pmsu_dfs_request_local,
     ((void*)0), 0);


 timeout = jiffies + HZ;
 while (time_before(jiffies, timeout)) {
  reg = readl(pmsu_mp_base + PMSU_EVENT_STATUS_AND_MASK(hwcpu));
  if (reg & PMSU_EVENT_STATUS_AND_MASK_DFS_DONE)
   break;
  udelay(10);
 }

 if (time_after(jiffies, timeout))
  return -ETIME;


 reg = readl(pmsu_mp_base + PMSU_EVENT_STATUS_AND_MASK(hwcpu));
 reg &= ~PMSU_EVENT_STATUS_AND_MASK_DFS_DONE_MASK;
 writel(reg, pmsu_mp_base + PMSU_EVENT_STATUS_AND_MASK(hwcpu));

 return 0;
}
