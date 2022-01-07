
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CMCI_STORM_NONE ;
 int INITIAL_CHECK_INTERVAL ;
 scalar_t__ __this_cpu_read (int ) ;
 int cmci_backoff_cnt ;
 int cmci_storm_state ;
 scalar_t__ machine_check_poll (int ,int ) ;
 int mce_banks_owned ;
 int this_cpu_dec (int ) ;
 int this_cpu_ptr (int *) ;
 int this_cpu_write (int ,int ) ;

bool mce_intel_cmci_poll(void)
{
 if (__this_cpu_read(cmci_storm_state) == CMCI_STORM_NONE)
  return 0;





 if (machine_check_poll(0, this_cpu_ptr(&mce_banks_owned)))
  this_cpu_write(cmci_backoff_cnt, INITIAL_CHECK_INTERVAL);
 else
  this_cpu_dec(cmci_backoff_cnt);

 return 1;
}
