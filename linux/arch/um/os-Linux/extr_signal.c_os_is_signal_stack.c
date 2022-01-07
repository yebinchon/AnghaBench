
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ss_flags; } ;
typedef TYPE_1__ stack_t ;


 int SS_ONSTACK ;
 int sigaltstack (int *,TYPE_1__*) ;

int os_is_signal_stack(void)
{
 stack_t ss;
 sigaltstack(((void*)0), &ss);

 return ss.ss_flags & SS_ONSTACK;
}
