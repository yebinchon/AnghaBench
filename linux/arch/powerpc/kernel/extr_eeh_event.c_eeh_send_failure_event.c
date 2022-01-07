
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_pe {int dummy; } ;


 int __eeh_send_failure_event (struct eeh_pe*) ;
 scalar_t__ eeh_debugfs_no_recover ;
 int pr_err (char*) ;

int eeh_send_failure_event(struct eeh_pe *pe)
{




 if (eeh_debugfs_no_recover) {
  pr_err("EEH: Event dropped due to no_recover setting\n");
  return 0;
 }

 return __eeh_send_failure_event(pe);
}
