
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 scalar_t__ FAB_SF_MODE ;
 int cpu_relax () ;
 scalar_t__ fabric ;
 unsigned long readl_relaxed (scalar_t__) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static void hip04_set_snoop_filter(unsigned int cluster, unsigned int on)
{
 unsigned long data;

 if (!fabric)
  BUG();
 data = readl_relaxed(fabric + FAB_SF_MODE);
 if (on)
  data |= 1 << cluster;
 else
  data &= ~(1 << cluster);
 writel_relaxed(data, fabric + FAB_SF_MODE);
 do {
  cpu_relax();
 } while (data != readl_relaxed(fabric + FAB_SF_MODE));
}
