
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sclp_cmdw_t ;


 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 int sclp_early_wait_irq () ;
 int sclp_service_call (int ,void*) ;

int sclp_early_cmd(sclp_cmdw_t cmd, void *sccb)
{
 unsigned long flags;
 int rc;

 raw_local_irq_save(flags);
 rc = sclp_service_call(cmd, sccb);
 if (rc)
  goto out;
 sclp_early_wait_irq();
out:
 raw_local_irq_restore(flags);
 return rc;
}
