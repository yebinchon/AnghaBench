
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCP_TIMESTAMP ;
 scalar_t__ cmci_storm_detect () ;
 int machine_check_poll (int ,int ) ;
 int mce_banks_owned ;
 int this_cpu_ptr (int *) ;

__attribute__((used)) static void intel_threshold_interrupt(void)
{
 if (cmci_storm_detect())
  return;

 machine_check_poll(MCP_TIMESTAMP, this_cpu_ptr(&mce_banks_owned));
}
