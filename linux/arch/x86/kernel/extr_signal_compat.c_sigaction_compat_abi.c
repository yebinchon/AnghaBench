
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_flags; } ;
struct k_sigaction {TYPE_1__ sa; } ;


 int SA_IA32_ABI ;
 int SA_X32_ABI ;
 scalar_t__ in_ia32_syscall () ;
 scalar_t__ in_x32_syscall () ;
 int signal_compat_build_tests () ;

void sigaction_compat_abi(struct k_sigaction *act, struct k_sigaction *oact)
{
 signal_compat_build_tests();


 if (oact)
  oact->sa.sa_flags &= ~(SA_IA32_ABI | SA_X32_ABI);

 if (!act)
  return;


 act->sa.sa_flags &= ~(SA_IA32_ABI | SA_X32_ABI);

 if (in_ia32_syscall())
  act->sa.sa_flags |= SA_IA32_ABI;
 if (in_x32_syscall())
  act->sa.sa_flags |= SA_X32_ABI;
}
