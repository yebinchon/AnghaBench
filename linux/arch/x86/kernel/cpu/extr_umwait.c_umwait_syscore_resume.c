
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int umwait_update_control_msr (int *) ;

__attribute__((used)) static void umwait_syscore_resume(void)
{
 umwait_update_control_msr(((void*)0));
}
