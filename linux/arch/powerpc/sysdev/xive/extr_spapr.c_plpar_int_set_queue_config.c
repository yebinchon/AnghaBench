
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_INT_SET_QUEUE_CONFIG ;
 scalar_t__ plpar_busy_delay (long) ;
 long plpar_hcall_norets (int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int pr_devel (char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int pr_err (char*,unsigned long,unsigned long,unsigned long,long) ;

__attribute__((used)) static long plpar_int_set_queue_config(unsigned long flags,
           unsigned long target,
           unsigned long priority,
           unsigned long qpage,
           unsigned long qsize)
{
 long rc;

 pr_devel("H_INT_SET_QUEUE_CONFIG flags=%lx target=%lx priority=%lx qpage=%lx qsize=%lx\n",
  flags, target, priority, qpage, qsize);

 do {
  rc = plpar_hcall_norets(H_INT_SET_QUEUE_CONFIG, flags, target,
     priority, qpage, qsize);
 } while (plpar_busy_delay(rc));

 if (rc) {
  pr_err("H_INT_SET_QUEUE_CONFIG cpu=%ld prio=%ld qpage=%lx returned %ld\n",
         target, priority, qpage, rc);
  return rc;
 }

 return 0;
}
