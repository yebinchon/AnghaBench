
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int regs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int SIGSEGV ;
 TYPE_2__* current ;
 int do_signal (int *) ;
 int force_sigsegv (int ) ;
 int os_dump_core () ;

void fatal_sigsegv(void)
{
 force_sigsegv(SIGSEGV);
 do_signal(&current->thread.regs);





 os_dump_core();
}
