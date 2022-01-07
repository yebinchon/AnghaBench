
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * kthread_run (int ,void*,char*,size_t) ;
 int power_saving_thread ;
 size_t ps_tsk_num ;
 int ** ps_tsks ;

__attribute__((used)) static int create_power_saving_task(void)
{
 int rc;

 ps_tsks[ps_tsk_num] = kthread_run(power_saving_thread,
  (void *)(unsigned long)ps_tsk_num,
  "acpi_pad/%d", ps_tsk_num);

 if (IS_ERR(ps_tsks[ps_tsk_num])) {
  rc = PTR_ERR(ps_tsks[ps_tsk_num]);
  ps_tsks[ps_tsk_num] = ((void*)0);
 } else {
  rc = 0;
  ps_tsk_num++;
 }

 return rc;
}
