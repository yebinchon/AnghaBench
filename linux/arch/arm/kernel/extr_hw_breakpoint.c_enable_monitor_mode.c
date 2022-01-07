
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARM_DBG_READ (int ,int ,int ,int) ;
 int ARM_DBG_WRITE (int ,int ,int,int) ;





 int ARM_DSCR_MDBGEN ;
 int ENODEV ;
 int EPERM ;
 int c0 ;
 int c1 ;
 int c2 ;
 int get_debug_arch () ;
 int isb () ;
 int pr_warn_once (char*,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static int enable_monitor_mode(void)
{
 u32 dscr;
 ARM_DBG_READ(c0, c1, 0, dscr);


 if (dscr & ARM_DSCR_MDBGEN)
  goto out;


 switch (get_debug_arch()) {
 case 132:
 case 131:
  ARM_DBG_WRITE(c0, c1, 0, (dscr | ARM_DSCR_MDBGEN));
  break;
 case 129:
 case 130:
 case 128:
  ARM_DBG_WRITE(c0, c2, 2, (dscr | ARM_DSCR_MDBGEN));
  isb();
  break;
 default:
  return -ENODEV;
 }


 ARM_DBG_READ(c0, c1, 0, dscr);
 if (!(dscr & ARM_DSCR_MDBGEN)) {
  pr_warn_once("Failed to enable monitor mode on CPU %d.\n",
    smp_processor_id());
  return -EPERM;
 }

out:
 return 0;
}
