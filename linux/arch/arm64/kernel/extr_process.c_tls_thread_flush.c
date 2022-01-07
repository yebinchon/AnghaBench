
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tp_value; } ;
struct TYPE_5__ {TYPE_1__ uw; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 int barrier () ;
 TYPE_3__* current ;
 scalar_t__ is_compat_task () ;
 int tpidr_el0 ;
 int tpidrro_el0 ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static void tls_thread_flush(void)
{
 write_sysreg(0, tpidr_el0);

 if (is_compat_task()) {
  current->thread.uw.tp_value = 0;






  barrier();
  write_sysreg(0, tpidrro_el0);
 }
}
