
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ ARM_BASE_BCR ;
 scalar_t__ ARM_BASE_BVR ;
 scalar_t__ ARM_BASE_WCR ;
 scalar_t__ ARM_BASE_WVR ;
 int ARM_DBG_READ (int ,int ,int,int) ;
 int ARM_DBG_WRITE (int ,int ,int,int ) ;




 int CORESIGHT_UNLOCK ;
 int EPERM ;
 int c0 ;
 int c1 ;
 int c3 ;
 int c5 ;
 int c7 ;
 int core_num_wrps ;
 scalar_t__ cpumask_intersects (int *,int ) ;
 int cpumask_of (unsigned int) ;
 int cpumask_or (int *,int *,int ) ;
 int debug_arch ;
 int debug_err_mask ;
 scalar_t__ enable_monitor_mode () ;
 int get_num_brp_resources () ;
 int has_ossr ;
 int isb () ;
 int pr_warn_once (char*,unsigned int) ;
 int write_wb_reg (scalar_t__,unsigned long) ;

__attribute__((used)) static void reset_ctrl_regs(unsigned int cpu)
{
 int i, raw_num_brps, err = 0;
 u32 val;
 switch (debug_arch) {
 case 131:
 case 130:

  goto out_mdbgen;
 case 128:




  ARM_DBG_READ(c1, c5, 4, val);
  if ((val & 0x1) == 0)
   err = -EPERM;

  if (!has_ossr)
   goto clear_vcr;
  break;
 case 129:



  ARM_DBG_READ(c1, c3, 4, val);
  if ((val & 0x1) == 1)
   err = -EPERM;
  break;
 }

 if (err) {
  pr_warn_once("CPU %d debug is powered down!\n", cpu);
  cpumask_or(&debug_err_mask, &debug_err_mask, cpumask_of(cpu));
  return;
 }





 ARM_DBG_WRITE(c1, c0, 4, ~CORESIGHT_UNLOCK);
 isb();





clear_vcr:
 ARM_DBG_WRITE(c0, c7, 0, 0);
 isb();

 if (cpumask_intersects(&debug_err_mask, cpumask_of(cpu))) {
  pr_warn_once("CPU %d failed to disable vector catch\n", cpu);
  return;
 }





 raw_num_brps = get_num_brp_resources();
 for (i = 0; i < raw_num_brps; ++i) {
  write_wb_reg(ARM_BASE_BCR + i, 0UL);
  write_wb_reg(ARM_BASE_BVR + i, 0UL);
 }

 for (i = 0; i < core_num_wrps; ++i) {
  write_wb_reg(ARM_BASE_WCR + i, 0UL);
  write_wb_reg(ARM_BASE_WVR + i, 0UL);
 }

 if (cpumask_intersects(&debug_err_mask, cpumask_of(cpu))) {
  pr_warn_once("CPU %d failed to clear debug register pairs\n", cpu);
  return;
 }





out_mdbgen:
 if (enable_monitor_mode())
  cpumask_or(&debug_err_mask, &debug_err_mask, cpumask_of(cpu));
}
