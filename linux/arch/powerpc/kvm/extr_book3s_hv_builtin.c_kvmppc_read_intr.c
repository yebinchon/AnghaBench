
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long kvmppc_read_one_intr (int*) ;
 scalar_t__ xive_enabled () ;

long kvmppc_read_intr(void)
{
 long ret = 0;
 long rc;
 bool again;

 if (xive_enabled())
  return 1;

 do {
  again = 0;
  rc = kvmppc_read_one_intr(&again);
  if (rc && (ret == 0 || rc > ret))
   ret = rc;
 } while (again);
 return ret;
}
