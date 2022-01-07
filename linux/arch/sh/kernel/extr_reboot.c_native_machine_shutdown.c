
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_send_stop () ;

__attribute__((used)) static void native_machine_shutdown(void)
{
 smp_send_stop();
}
