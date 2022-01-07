
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shutdown_trigger {int dummy; } ;


 int __ipl_run ;
 int smp_call_ipl_cpu (int ,int *) ;

__attribute__((used)) static void ipl_run(struct shutdown_trigger *trigger)
{
 smp_call_ipl_cpu(__ipl_run, ((void*)0));
}
