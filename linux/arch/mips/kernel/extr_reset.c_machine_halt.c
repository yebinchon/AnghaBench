
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _machine_halt () ;
 int machine_hang () ;
 int preempt_disable () ;
 int smp_send_stop () ;

void machine_halt(void)
{
 if (_machine_halt)
  _machine_halt();





 machine_hang();
}
