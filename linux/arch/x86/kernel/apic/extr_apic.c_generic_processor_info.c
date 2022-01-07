
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* x86_32_early_logical_apicid ) (int) ;} ;


 int BAD_APICID ;
 int EINVAL ;
 int ENODEV ;
 int allocate_logical_cpuid (int) ;
 TYPE_1__* apic ;
 int boot_cpu_apic_version ;
 int boot_cpu_physical_apicid ;
 int* cpuid_to_apicid ;
 int disabled_cpu_apicid ;
 int disabled_cpus ;
 int early_per_cpu (int ,int) ;
 int max_physical_apicid ;
 int nr_cpu_ids ;
 int num_processors ;
 int phys_cpu_present_map ;
 int physid_isset (int,int ) ;
 int physid_set (int,int ) ;
 int pr_warning (char*,int,int,...) ;
 int read_apic_id () ;
 int set_cpu_possible (int,int) ;
 int set_cpu_present (int,int) ;
 int stub1 (int) ;
 int x86_bios_cpu_apicid ;
 int x86_cpu_to_apicid ;
 int x86_cpu_to_logical_apicid ;

int generic_processor_info(int apicid, int version)
{
 int cpu, max = nr_cpu_ids;
 bool boot_cpu_detected = physid_isset(boot_cpu_physical_apicid,
    phys_cpu_present_map);
 if (disabled_cpu_apicid != BAD_APICID &&
     disabled_cpu_apicid != read_apic_id() &&
     disabled_cpu_apicid == apicid) {
  int thiscpu = num_processors + disabled_cpus;

  pr_warning("APIC: Disabling requested cpu."
      " Processor %d/0x%x ignored.\n",
      thiscpu, apicid);

  disabled_cpus++;
  return -ENODEV;
 }





 if (!boot_cpu_detected && num_processors >= nr_cpu_ids - 1 &&
     apicid != boot_cpu_physical_apicid) {
  int thiscpu = max + disabled_cpus - 1;

  pr_warning(
   "APIC: NR_CPUS/possible_cpus limit of %i almost"
   " reached. Keeping one slot for boot cpu."
   "  Processor %d/0x%x ignored.\n", max, thiscpu, apicid);

  disabled_cpus++;
  return -ENODEV;
 }

 if (num_processors >= nr_cpu_ids) {
  int thiscpu = max + disabled_cpus;

  pr_warning("APIC: NR_CPUS/possible_cpus limit of %i "
      "reached. Processor %d/0x%x ignored.\n",
      max, thiscpu, apicid);

  disabled_cpus++;
  return -EINVAL;
 }

 if (apicid == boot_cpu_physical_apicid) {







  cpu = 0;


  cpuid_to_apicid[0] = apicid;
 } else {
  cpu = allocate_logical_cpuid(apicid);
  if (cpu < 0) {
   disabled_cpus++;
   return -EINVAL;
  }
 }




 if (version == 0x0) {
  pr_warning("BIOS bug: APIC version is 0 for CPU %d/0x%x, fixing up to 0x10\n",
      cpu, apicid);
  version = 0x10;
 }

 if (version != boot_cpu_apic_version) {
  pr_warning("BIOS bug: APIC version mismatch, boot CPU: %x, CPU %d: version %x\n",
   boot_cpu_apic_version, cpu, version);
 }

 if (apicid > max_physical_apicid)
  max_physical_apicid = apicid;
 set_cpu_possible(cpu, 1);
 physid_set(apicid, phys_cpu_present_map);
 set_cpu_present(cpu, 1);
 num_processors++;

 return cpu;
}
