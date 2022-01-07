
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {scalar_t__ space_id; } ;
struct TYPE_4__ {scalar_t__ space_id; } ;
struct TYPE_6__ {int state_count; int shared_cpu_map; TYPE_2__ status_register; TYPE_1__ control_register; } ;
struct powernow_k8_data {scalar_t__ cpu; int numps; TYPE_3__ acpi_data; struct cpufreq_frequency_table* powernow_table; } ;
struct cpufreq_frequency_table {int frequency; } ;


 scalar_t__ ACPI_ADR_SPACE_FIXED_HARDWARE ;
 int CPUFREQ_TABLE_END ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int acpi_processor_notify_smm (int ) ;
 scalar_t__ acpi_processor_register_performance (TYPE_3__*,scalar_t__) ;
 int acpi_processor_unregister_performance (scalar_t__) ;
 scalar_t__ cpumask_first (int ) ;
 int fill_powernow_table_fidvid (struct powernow_k8_data*,struct cpufreq_frequency_table*) ;
 int kfree (struct cpufreq_frequency_table*) ;
 struct cpufreq_frequency_table* kzalloc (int,int ) ;
 int powernow_k8_acpi_pst_values (struct powernow_k8_data*,int ) ;
 int pr_debug (char*,...) ;
 int pr_err (char*) ;
 int print_basics (struct powernow_k8_data*) ;
 int topology_core_cpumask (scalar_t__) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static int powernow_k8_cpu_init_acpi(struct powernow_k8_data *data)
{
 struct cpufreq_frequency_table *powernow_table;
 int ret_val = -ENODEV;
 u64 control, status;

 if (acpi_processor_register_performance(&data->acpi_data, data->cpu)) {
  pr_debug("register performance failed: bad ACPI data\n");
  return -EIO;
 }


 if (data->acpi_data.state_count <= 1) {
  pr_debug("No ACPI P-States\n");
  goto err_out;
 }

 control = data->acpi_data.control_register.space_id;
 status = data->acpi_data.status_register.space_id;

 if ((control != ACPI_ADR_SPACE_FIXED_HARDWARE) ||
     (status != ACPI_ADR_SPACE_FIXED_HARDWARE)) {
  pr_debug("Invalid control/status registers (%llx - %llx)\n",
   control, status);
  goto err_out;
 }


 powernow_table = kzalloc((sizeof(*powernow_table)
  * (data->acpi_data.state_count + 1)), GFP_KERNEL);
 if (!powernow_table)
  goto err_out;


 data->numps = data->acpi_data.state_count;
 powernow_k8_acpi_pst_values(data, 0);

 ret_val = fill_powernow_table_fidvid(data, powernow_table);
 if (ret_val)
  goto err_out_mem;

 powernow_table[data->acpi_data.state_count].frequency =
  CPUFREQ_TABLE_END;
 data->powernow_table = powernow_table;

 if (cpumask_first(topology_core_cpumask(data->cpu)) == data->cpu)
  print_basics(data);


 acpi_processor_notify_smm(THIS_MODULE);

 if (!zalloc_cpumask_var(&data->acpi_data.shared_cpu_map, GFP_KERNEL)) {
  pr_err("unable to alloc powernow_k8_data cpumask\n");
  ret_val = -ENOMEM;
  goto err_out_mem;
 }

 return 0;

err_out_mem:
 kfree(powernow_table);

err_out:
 acpi_processor_unregister_performance(data->cpu);



 data->acpi_data.state_count = 0;

 return ret_val;
}
