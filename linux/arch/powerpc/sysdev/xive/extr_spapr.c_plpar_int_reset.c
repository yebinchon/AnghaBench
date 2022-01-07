
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_INT_RESET ;
 scalar_t__ plpar_busy_delay (long) ;
 long plpar_hcall_norets (int ,unsigned long) ;
 int pr_err (char*,long) ;

__attribute__((used)) static long plpar_int_reset(unsigned long flags)
{
 long rc;

 do {
  rc = plpar_hcall_norets(H_INT_RESET, flags);
 } while (plpar_busy_delay(rc));

 if (rc)
  pr_err("H_INT_RESET failed %ld\n", rc);

 return rc;
}
