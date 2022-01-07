
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shutdown_trigger {int name; } ;


 int ON_PANIC_STR ;
 int ON_RESTART_STR ;
 int disabled_wait () ;
 int smp_stop_cpu () ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void stop_run(struct shutdown_trigger *trigger)
{
 if (strcmp(trigger->name, ON_PANIC_STR) == 0 ||
     strcmp(trigger->name, ON_RESTART_STR) == 0)
  disabled_wait();
 smp_stop_cpu();
}
