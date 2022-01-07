
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int capabilities; } ;
struct TYPE_7__ {int hw_events; TYPE_2__ pmu; struct platform_device* plat_device; int count_width; scalar_t__ max_period; } ;


 scalar_t__ BIT_ULL (int ) ;
 int CPUHP_AP_PERF_ONLINE ;
 int DEFAULT_COUNT_WIDTH ;
 int PERF_PMU_CAP_NO_INTERRUPT ;
 int PERF_TYPE_RAW ;
 int cpuhp_setup_state (int ,char*,int ,int ) ;
 TYPE_3__ csky_pmu ;
 int csky_pmu_dying_cpu ;
 int csky_pmu_free_irq () ;
 int csky_pmu_handle_irq ;
 int csky_pmu_request_irq (int ) ;
 int csky_pmu_reset ;
 int csky_pmu_starting_cpu ;
 int free_percpu (int ) ;
 int init_hw_perf_events () ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int on_each_cpu (int ,TYPE_3__*,int) ;
 int perf_pmu_register (TYPE_2__*,char*,int ) ;
 int pr_notice (char*) ;

int csky_pmu_device_probe(struct platform_device *pdev,
     const struct of_device_id *of_table)
{
 struct device_node *node = pdev->dev.of_node;
 int ret;

 ret = init_hw_perf_events();
 if (ret) {
  pr_notice("[perf] failed to probe PMU!\n");
  return ret;
 }

 if (of_property_read_u32(node, "count-width",
     &csky_pmu.count_width)) {
  csky_pmu.count_width = DEFAULT_COUNT_WIDTH;
 }
 csky_pmu.max_period = BIT_ULL(csky_pmu.count_width) - 1;

 csky_pmu.plat_device = pdev;


 on_each_cpu(csky_pmu_reset, &csky_pmu, 1);

 ret = csky_pmu_request_irq(csky_pmu_handle_irq);
 if (ret) {
  csky_pmu.pmu.capabilities |= PERF_PMU_CAP_NO_INTERRUPT;
  pr_notice("[perf] PMU request irq fail!\n");
 }

 ret = cpuhp_setup_state(CPUHP_AP_PERF_ONLINE, "AP_PERF_ONLINE",
    csky_pmu_starting_cpu,
    csky_pmu_dying_cpu);
 if (ret) {
  csky_pmu_free_irq();
  free_percpu(csky_pmu.hw_events);
  return ret;
 }

 ret = perf_pmu_register(&csky_pmu.pmu, "cpu", PERF_TYPE_RAW);
 if (ret) {
  csky_pmu_free_irq();
  free_percpu(csky_pmu.hw_events);
 }

 return ret;
}
