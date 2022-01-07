
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kexec_mark_crashkres (int) ;

void arch_kexec_unprotect_crashkres(void)
{
 kexec_mark_crashkres(0);
}
