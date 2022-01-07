
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_PIC ;
 int PLPAR_HCALL_BUFSIZE ;
 unsigned long plpar_hcall (int ,unsigned long*) ;

__attribute__((used)) static unsigned h_pic(unsigned long *pool_idle_time,
        unsigned long *num_procs)
{
 unsigned long rc;
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];

 rc = plpar_hcall(H_PIC, retbuf);

 *pool_idle_time = retbuf[0];
 *num_procs = retbuf[1];

 return rc;
}
