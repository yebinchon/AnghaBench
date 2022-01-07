
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int clk; struct cpu_data* driver_data; } ;
struct cpu_data {TYPE_1__* table; struct clk** pclk; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {size_t driver_data; } ;


 int clk_set_parent (int ,struct clk*) ;

__attribute__((used)) static int qoriq_cpufreq_target(struct cpufreq_policy *policy,
  unsigned int index)
{
 struct clk *parent;
 struct cpu_data *data = policy->driver_data;

 parent = data->pclk[data->table[index].driver_data];
 return clk_set_parent(policy->clk, parent);
}
