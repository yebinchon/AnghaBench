
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmci_clear () ;
 int cpu_info ;
 int cpuhp_tasks_frozen ;
 int mce_available (int ) ;
 int raw_cpu_ptr (int *) ;
 int vendor_disable_error_reporting () ;

__attribute__((used)) static void mce_disable_cpu(void)
{
 if (!mce_available(raw_cpu_ptr(&cpu_info)))
  return;

 if (!cpuhp_tasks_frozen)
  cmci_clear();

 vendor_disable_error_reporting();
}
