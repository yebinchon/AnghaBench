
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_INT_GET_QUEUE_INFO ;
 int PLPAR_HCALL_BUFSIZE ;
 scalar_t__ plpar_busy_delay (long) ;
 long plpar_hcall (int ,unsigned long*,unsigned long,unsigned long,unsigned long) ;
 int pr_devel (char*,unsigned long,unsigned long) ;
 int pr_err (char*,unsigned long,unsigned long,long) ;

__attribute__((used)) static long plpar_int_get_queue_info(unsigned long flags,
         unsigned long target,
         unsigned long priority,
         unsigned long *esn_page,
         unsigned long *esn_size)
{
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 long rc;

 do {
  rc = plpar_hcall(H_INT_GET_QUEUE_INFO, retbuf, flags, target,
     priority);
 } while (plpar_busy_delay(rc));

 if (rc) {
  pr_err("H_INT_GET_QUEUE_INFO cpu=%ld prio=%ld failed %ld\n",
         target, priority, rc);
  return rc;
 }

 *esn_page = retbuf[0];
 *esn_size = retbuf[1];

 pr_devel("H_INT_GET_QUEUE_INFO page=%lx size=%lx\n",
  retbuf[0], retbuf[1]);

 return 0;
}
