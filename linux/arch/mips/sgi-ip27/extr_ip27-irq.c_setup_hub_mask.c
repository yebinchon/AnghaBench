
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hub_irq_data {int cpu; void** irq_mask; } ;
struct cpumask {int dummy; } ;
typedef int nasid_t ;


 int COMPACT_TO_NASID_NODEID (int ) ;
 int PI_INT_MASK0_A ;
 int PI_INT_MASK0_B ;
 int PI_INT_MASK1_A ;
 int PI_INT_MASK1_B ;
 void* REMOTE_HUB_PTR (int ,int ) ;
 int cpu_online_mask ;
 int cpu_to_node (int) ;
 int cpumask_first_and (struct cpumask const*,int ) ;
 int cputoslice (int) ;

__attribute__((used)) static void setup_hub_mask(struct hub_irq_data *hd, const struct cpumask *mask)
{
 nasid_t nasid;
 int cpu;

 cpu = cpumask_first_and(mask, cpu_online_mask);
 nasid = COMPACT_TO_NASID_NODEID(cpu_to_node(cpu));
 hd->cpu = cpu;
 if (!cputoslice(cpu)) {
  hd->irq_mask[0] = REMOTE_HUB_PTR(nasid, PI_INT_MASK0_A);
  hd->irq_mask[1] = REMOTE_HUB_PTR(nasid, PI_INT_MASK1_A);
 } else {
  hd->irq_mask[0] = REMOTE_HUB_PTR(nasid, PI_INT_MASK0_B);
  hd->irq_mask[1] = REMOTE_HUB_PTR(nasid, PI_INT_MASK1_B);
 }
}
