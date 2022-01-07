
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 scalar_t__ VMENTER_L1D_FLUSH_AUTO ;
 int X86_BUG_L1TF ;
 int boot_cpu_has (int ) ;
 scalar_t__ l1tf_vmx_mitigation ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmentry_l1d_flush_param ;
 int vmentry_l1d_flush_parse (char const*) ;
 int vmx_l1d_flush_mutex ;
 int vmx_setup_l1d_flush (int) ;

__attribute__((used)) static int vmentry_l1d_flush_set(const char *s, const struct kernel_param *kp)
{
 int l1tf, ret;

 l1tf = vmentry_l1d_flush_parse(s);
 if (l1tf < 0)
  return l1tf;

 if (!boot_cpu_has(X86_BUG_L1TF))
  return 0;







 if (l1tf_vmx_mitigation == VMENTER_L1D_FLUSH_AUTO) {
  vmentry_l1d_flush_param = l1tf;
  return 0;
 }

 mutex_lock(&vmx_l1d_flush_mutex);
 ret = vmx_setup_l1d_flush(l1tf);
 mutex_unlock(&vmx_l1d_flush_mutex);
 return ret;
}
