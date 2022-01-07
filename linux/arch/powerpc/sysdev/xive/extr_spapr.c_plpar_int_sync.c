
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_INT_SYNC ;
 scalar_t__ plpar_busy_delay (long) ;
 long plpar_hcall_norets (int ,unsigned long,unsigned long) ;
 int pr_err (char*,unsigned long,long) ;

__attribute__((used)) static long plpar_int_sync(unsigned long flags, unsigned long lisn)
{
 long rc;

 do {
  rc = plpar_hcall_norets(H_INT_SYNC, flags, lisn);
 } while (plpar_busy_delay(rc));

 if (rc) {
  pr_err("H_INT_SYNC lisn=%ld returned %ld\n", lisn, rc);
  return rc;
 }

 return 0;
}
