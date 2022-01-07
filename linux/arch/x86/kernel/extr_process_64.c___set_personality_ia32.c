
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int status; } ;
struct TYPE_10__ {int personality; TYPE_2__* mm; } ;
struct TYPE_9__ {int orig_ax; } ;
struct TYPE_7__ {int ia32_compat; } ;
struct TYPE_8__ {TYPE_1__ context; } ;


 int TIF_IA32 ;
 int TIF_X32 ;
 int TS_COMPAT ;
 int __NR_ia32_execve ;
 int clear_thread_flag (int ) ;
 TYPE_4__* current ;
 TYPE_5__* current_thread_info () ;
 int force_personality32 ;
 int set_thread_flag (int ) ;
 TYPE_3__* task_pt_regs (TYPE_4__*) ;

__attribute__((used)) static void __set_personality_ia32(void)
{
}
