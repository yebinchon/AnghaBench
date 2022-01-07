
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ context; } ;


 int MMCF_AARCH32 ;
 TYPE_3__* current ;
 scalar_t__ is_compat_task () ;
 int ptrauth_thread_init_user (TYPE_3__*) ;

void arch_setup_new_exec(void)
{
 current->mm->context.flags = is_compat_task() ? MMCF_AARCH32 : 0;

 ptrauth_thread_init_user(current);
}
