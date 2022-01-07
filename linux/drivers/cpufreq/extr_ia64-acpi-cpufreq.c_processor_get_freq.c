
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpufreq_acpi_req {unsigned int cpu; } ;
struct cpufreq_acpi_io {int dummy; } ;


 long EAGAIN ;
 struct cpufreq_acpi_io** acpi_io_data ;
 int extract_clock (struct cpufreq_acpi_io*,int ) ;
 int pr_debug (char*) ;
 int pr_warn (char*,int) ;
 int processor_get_pstate (int *) ;
 unsigned int smp_processor_id () ;

__attribute__((used)) static long
processor_get_freq (
 void *arg)
{
 struct cpufreq_acpi_req *req = arg;
 unsigned int cpu = req->cpu;
 struct cpufreq_acpi_io *data = acpi_io_data[cpu];
 u32 value;
 int ret;

 pr_debug("processor_get_freq\n");
 if (smp_processor_id() != cpu)
  return -EAGAIN;


 ret = processor_get_pstate(&value);
 if (ret) {
  pr_warn("get performance failed with error %d\n", ret);
  return ret;
 }
 return 1000 * extract_clock(data, value);
}
