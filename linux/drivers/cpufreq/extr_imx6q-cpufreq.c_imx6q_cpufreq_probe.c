
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int u32 ;
struct property {int length; int * value; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct dev_pm_opp {int dummy; } ;
typedef int __be32 ;
struct TYPE_22__ {unsigned long frequency; } ;
struct TYPE_21__ {int of_node; } ;


 int CPUFREQ_ETERNAL ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int FREQ_1P2_GHZ ;
 int GFP_KERNEL ;
 int IMX6Q_CPUFREQ_CLK_NUM ;
 int IMX6UL_CPUFREQ_CLK_NUM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned long PU_SOC_VOLTAGE_HIGH ;
 unsigned long PU_SOC_VOLTAGE_NORMAL ;
 int arm_reg ;
 unsigned long be32_to_cpup (int ) ;
 int clk_bulk_get (TYPE_1__*,int ,int ) ;
 int clk_bulk_put (int ,int ) ;
 int clks ;
 TYPE_1__* cpu_dev ;
 int cpufreq_register_driver (int *) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_exact (TYPE_1__*,int,int) ;
 int dev_pm_opp_free_cpufreq_table (TYPE_1__*,TYPE_6__**) ;
 int dev_pm_opp_get_opp_count (TYPE_1__*) ;
 unsigned long dev_pm_opp_get_voltage (struct dev_pm_opp*) ;
 int dev_pm_opp_init_cpufreq_table (TYPE_1__*,TYPE_6__**) ;
 int dev_pm_opp_of_add_table (TYPE_1__*) ;
 int dev_pm_opp_of_remove_table (TYPE_1__*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 int dev_warn (TYPE_1__*,char*) ;
 unsigned long* devm_kcalloc (TYPE_1__*,int,int,int ) ;
 int free_opp ;
 TYPE_6__* freq_table ;
 TYPE_1__* get_cpu_device (int ) ;
 unsigned long* imx6_soc_volt ;
 int imx6q_cpufreq_driver ;
 int imx6q_opp_check_speed_grading (TYPE_1__*) ;
 int imx6ul_opp_check_speed_grading (TYPE_1__*) ;
 int max_freq ;
 int num_clks ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int pr_err (char*) ;
 int pu_reg ;
 int regulator_get (TYPE_1__*,char*) ;
 int regulator_get_optional (TYPE_1__*,char*) ;
 int regulator_put (int ) ;
 int regulator_set_voltage_time (int ,unsigned long,unsigned long) ;
 int soc_opp_count ;
 int soc_reg ;
 int transition_latency ;

__attribute__((used)) static int imx6q_cpufreq_probe(struct platform_device *pdev)
{
 struct device_node *np;
 struct dev_pm_opp *opp;
 unsigned long min_volt, max_volt;
 int num, ret;
 const struct property *prop;
 const __be32 *val;
 u32 nr, i, j;

 cpu_dev = get_cpu_device(0);
 if (!cpu_dev) {
  pr_err("failed to get cpu0 device\n");
  return -ENODEV;
 }

 np = of_node_get(cpu_dev->of_node);
 if (!np) {
  dev_err(cpu_dev, "failed to find cpu0 node\n");
  return -ENOENT;
 }

 if (of_machine_is_compatible("fsl,imx6ul") ||
     of_machine_is_compatible("fsl,imx6ull"))
  num_clks = IMX6UL_CPUFREQ_CLK_NUM;
 else
  num_clks = IMX6Q_CPUFREQ_CLK_NUM;

 ret = clk_bulk_get(cpu_dev, num_clks, clks);
 if (ret)
  goto put_node;

 arm_reg = regulator_get(cpu_dev, "arm");
 pu_reg = regulator_get_optional(cpu_dev, "pu");
 soc_reg = regulator_get(cpu_dev, "soc");
 if (PTR_ERR(arm_reg) == -EPROBE_DEFER ||
   PTR_ERR(soc_reg) == -EPROBE_DEFER ||
   PTR_ERR(pu_reg) == -EPROBE_DEFER) {
  ret = -EPROBE_DEFER;
  dev_dbg(cpu_dev, "regulators not ready, defer\n");
  goto put_reg;
 }
 if (IS_ERR(arm_reg) || IS_ERR(soc_reg)) {
  dev_err(cpu_dev, "failed to get regulators\n");
  ret = -ENOENT;
  goto put_reg;
 }

 ret = dev_pm_opp_of_add_table(cpu_dev);
 if (ret < 0) {
  dev_err(cpu_dev, "failed to init OPP table: %d\n", ret);
  goto put_reg;
 }

 if (of_machine_is_compatible("fsl,imx6ul") ||
     of_machine_is_compatible("fsl,imx6ull")) {
  ret = imx6ul_opp_check_speed_grading(cpu_dev);
  if (ret) {
   if (ret == -EPROBE_DEFER)
    goto put_node;

   dev_err(cpu_dev, "failed to read ocotp: %d\n",
    ret);
   goto put_node;
  }
 } else {
  imx6q_opp_check_speed_grading(cpu_dev);
 }


 free_opp = 1;
 num = dev_pm_opp_get_opp_count(cpu_dev);
 if (num < 0) {
  ret = num;
  dev_err(cpu_dev, "no OPP table is found: %d\n", ret);
  goto out_free_opp;
 }

 ret = dev_pm_opp_init_cpufreq_table(cpu_dev, &freq_table);
 if (ret) {
  dev_err(cpu_dev, "failed to init cpufreq table: %d\n", ret);
  goto out_free_opp;
 }


 imx6_soc_volt = devm_kcalloc(cpu_dev, num, sizeof(*imx6_soc_volt),
         GFP_KERNEL);
 if (imx6_soc_volt == ((void*)0)) {
  ret = -ENOMEM;
  goto free_freq_table;
 }

 prop = of_find_property(np, "fsl,soc-operating-points", ((void*)0));
 if (!prop || !prop->value)
  goto soc_opp_out;





 nr = prop->length / sizeof(u32);
 if (nr % 2 || (nr / 2) < num)
  goto soc_opp_out;

 for (j = 0; j < num; j++) {
  val = prop->value;
  for (i = 0; i < nr / 2; i++) {
   unsigned long freq = be32_to_cpup(val++);
   unsigned long volt = be32_to_cpup(val++);
   if (freq_table[j].frequency == freq) {
    imx6_soc_volt[soc_opp_count++] = volt;
    break;
   }
  }
 }

soc_opp_out:

 if (soc_opp_count != num) {
  dev_warn(cpu_dev, "can NOT find valid fsl,soc-operating-points property in dtb, use default value!\n");
  for (j = 0; j < num; j++)
   imx6_soc_volt[j] = PU_SOC_VOLTAGE_NORMAL;
  if (freq_table[num - 1].frequency * 1000 == FREQ_1P2_GHZ)
   imx6_soc_volt[num - 1] = PU_SOC_VOLTAGE_HIGH;
 }

 if (of_property_read_u32(np, "clock-latency", &transition_latency))
  transition_latency = CPUFREQ_ETERNAL;





 ret = regulator_set_voltage_time(soc_reg, imx6_soc_volt[0], imx6_soc_volt[num - 1]);
 if (ret > 0)
  transition_latency += ret * 1000;
 if (!IS_ERR(pu_reg)) {
  ret = regulator_set_voltage_time(pu_reg, imx6_soc_volt[0], imx6_soc_volt[num - 1]);
  if (ret > 0)
   transition_latency += ret * 1000;
 }






 max_freq = freq_table[--num].frequency;
 opp = dev_pm_opp_find_freq_exact(cpu_dev,
      freq_table[0].frequency * 1000, 1);
 min_volt = dev_pm_opp_get_voltage(opp);
 dev_pm_opp_put(opp);
 opp = dev_pm_opp_find_freq_exact(cpu_dev, max_freq * 1000, 1);
 max_volt = dev_pm_opp_get_voltage(opp);
 dev_pm_opp_put(opp);

 ret = regulator_set_voltage_time(arm_reg, min_volt, max_volt);
 if (ret > 0)
  transition_latency += ret * 1000;

 ret = cpufreq_register_driver(&imx6q_cpufreq_driver);
 if (ret) {
  dev_err(cpu_dev, "failed register driver: %d\n", ret);
  goto free_freq_table;
 }

 of_node_put(np);
 return 0;

free_freq_table:
 dev_pm_opp_free_cpufreq_table(cpu_dev, &freq_table);
out_free_opp:
 if (free_opp)
  dev_pm_opp_of_remove_table(cpu_dev);
put_reg:
 if (!IS_ERR(arm_reg))
  regulator_put(arm_reg);
 if (!IS_ERR(pu_reg))
  regulator_put(pu_reg);
 if (!IS_ERR(soc_reg))
  regulator_put(soc_reg);

 clk_bulk_put(num_clks, clks);
put_node:
 of_node_put(np);

 return ret;
}
