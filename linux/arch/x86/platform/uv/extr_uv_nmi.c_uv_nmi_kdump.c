
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int atomic_set (int *,int) ;
 int pr_err (char*) ;
 int uv_nmi_kexec_failed ;

__attribute__((used)) static inline void uv_nmi_kdump(int cpu, int master, struct pt_regs *regs)
{
 if (master)
  pr_err("UV: NMI kdump: KEXEC not supported in this kernel\n");
 atomic_set(&uv_nmi_kexec_failed, 1);
}
