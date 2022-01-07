
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_fadump_mem_struct {int dummy; } ;
struct fw_dump {int dump_registered; int ibm_configure_kernel_dump; } ;


 int EEXIST ;
 int EINVAL ;
 int EIO ;
 int FADUMP_REGISTER ;
 int fdm ;
 int is_fadump_boot_mem_contiguous () ;
 int is_fadump_reserved_mem_contiguous () ;
 int mdelay (unsigned int) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 unsigned int rtas_busy_delay_time (int) ;
 int rtas_call (int ,int,int,int *,int ,int *,int) ;

__attribute__((used)) static int rtas_fadump_register(struct fw_dump *fadump_conf)
{
 unsigned int wait_time;
 int rc, err = -EIO;


 do {
  rc = rtas_call(fadump_conf->ibm_configure_kernel_dump, 3, 1,
    ((void*)0), FADUMP_REGISTER, &fdm,
    sizeof(struct rtas_fadump_mem_struct));

  wait_time = rtas_busy_delay_time(rc);
  if (wait_time)
   mdelay(wait_time);

 } while (wait_time);

 switch (rc) {
 case 0:
  pr_info("Registration is successful!\n");
  fadump_conf->dump_registered = 1;
  err = 0;
  break;
 case -1:
  pr_err("Failed to register. Hardware Error(%d).\n", rc);
  break;
 case -3:
  if (!is_fadump_boot_mem_contiguous())
   pr_err("Can't have holes in boot memory area.\n");
  else if (!is_fadump_reserved_mem_contiguous())
   pr_err("Can't have holes in reserved memory area.\n");

  pr_err("Failed to register. Parameter Error(%d).\n", rc);
  err = -EINVAL;
  break;
 case -9:
  pr_err("Already registered!\n");
  fadump_conf->dump_registered = 1;
  err = -EEXIST;
  break;
 default:
  pr_err("Failed to register. Unknown Error(%d).\n", rc);
  break;
 }

 return err;
}
