
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CM_GCR_GIC_STATUS_EX ;
 int ENODEV ;
 int cps_smp_ops ;
 int mips_cm_present () ;
 int pr_warn (char*) ;
 int read_gcr_gic_status () ;
 int register_smp_ops (int *) ;

int register_cps_smp_ops(void)
{
 if (!mips_cm_present()) {
  pr_warn("MIPS CPS SMP unable to proceed without a CM\n");
  return -ENODEV;
 }


 if (!(read_gcr_gic_status() & CM_GCR_GIC_STATUS_EX)) {
  pr_warn("MIPS CPS SMP unable to proceed without a GIC\n");
  return -ENODEV;
 }

 register_smp_ops(&cps_smp_ops);
 return 0;
}
