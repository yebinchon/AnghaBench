
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shutdown_trigger {int dummy; } ;


 scalar_t__ DUMP_TYPE_NONE ;
 int __dump_run ;
 scalar_t__ dump_type ;
 int smp_call_ipl_cpu (int ,int *) ;
 int smp_send_stop () ;

__attribute__((used)) static void dump_run(struct shutdown_trigger *trigger)
{
 if (dump_type == DUMP_TYPE_NONE)
  return;
 smp_send_stop();
 smp_call_ipl_cpu(__dump_run, ((void*)0));
}
