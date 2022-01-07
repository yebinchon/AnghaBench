
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int read_sysreg (int ) ;
 int * task_user_tls (int ) ;
 int tpidr_el0 ;

void tls_preserve_current_state(void)
{
 *task_user_tls(current) = read_sysreg(tpidr_el0);
}
