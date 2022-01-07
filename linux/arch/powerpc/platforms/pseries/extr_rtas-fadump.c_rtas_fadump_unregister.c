
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_fadump_mem_struct {int dummy; } ;
struct fw_dump {scalar_t__ dump_registered; int ibm_configure_kernel_dump; } ;


 int EIO ;
 int FADUMP_UNREGISTER ;
 int fdm ;
 int mdelay (unsigned int) ;
 int pr_err (char*,int) ;
 unsigned int rtas_busy_delay_time (int) ;
 int rtas_call (int ,int,int,int *,int ,int *,int) ;

__attribute__((used)) static int rtas_fadump_unregister(struct fw_dump *fadump_conf)
{
 unsigned int wait_time;
 int rc;


 do {
  rc = rtas_call(fadump_conf->ibm_configure_kernel_dump, 3, 1,
    ((void*)0), FADUMP_UNREGISTER, &fdm,
    sizeof(struct rtas_fadump_mem_struct));

  wait_time = rtas_busy_delay_time(rc);
  if (wait_time)
   mdelay(wait_time);
 } while (wait_time);

 if (rc) {
  pr_err("Failed to un-register - unexpected error(%d).\n", rc);
  return -EIO;
 }

 fadump_conf->dump_registered = 0;
 return 0;
}
