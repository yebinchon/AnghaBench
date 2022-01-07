
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_INT_ESB ;
 int PLPAR_HCALL_BUFSIZE ;
 scalar_t__ plpar_busy_delay (long) ;
 long plpar_hcall (int ,unsigned long*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int pr_devel (char*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int pr_err (char*,unsigned long,unsigned long,long) ;

__attribute__((used)) static long plpar_int_esb(unsigned long flags,
     unsigned long lisn,
     unsigned long offset,
     unsigned long in_data,
     unsigned long *out_data)
{
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 long rc;

 pr_devel("H_INT_ESB flags=%lx lisn=%lx offset=%lx in=%lx\n",
  flags, lisn, offset, in_data);

 do {
  rc = plpar_hcall(H_INT_ESB, retbuf, flags, lisn, offset,
     in_data);
 } while (plpar_busy_delay(rc));

 if (rc) {
  pr_err("H_INT_ESB lisn=%ld offset=%ld returned %ld\n",
         lisn, offset, rc);
  return rc;
 }

 *out_data = retbuf[0];

 return 0;
}
