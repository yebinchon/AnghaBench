
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int X86_FEATURE_HYPERVISOR ;
 int boot_cpu_has (int ) ;
 scalar_t__ is_lbr_from (unsigned long) ;
 int lbr_from_signext_quirk_wr (int) ;
 scalar_t__ rdmsrl_safe (unsigned long,int*) ;
 int wrmsrl (unsigned long,int) ;
 scalar_t__ wrmsrl_safe (unsigned long,int) ;

__attribute__((used)) static bool check_msr(unsigned long msr, u64 mask)
{
 u64 val_old, val_new, val_tmp;





 if (!boot_cpu_has(X86_FEATURE_HYPERVISOR))
  return 1;






 if (rdmsrl_safe(msr, &val_old))
  return 0;




 val_tmp = val_old ^ mask;

 if (is_lbr_from(msr))
  val_tmp = lbr_from_signext_quirk_wr(val_tmp);

 if (wrmsrl_safe(msr, val_tmp) ||
     rdmsrl_safe(msr, &val_new))
  return 0;





 if (val_new != val_tmp)
  return 0;

 if (is_lbr_from(msr))
  val_old = lbr_from_signext_quirk_wr(val_old);




 wrmsrl(msr, val_old);

 return 1;
}
