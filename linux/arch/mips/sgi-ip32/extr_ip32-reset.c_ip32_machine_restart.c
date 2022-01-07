
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; } ;


 int CRIME_CONTROL_HARD_RESET ;
 TYPE_1__* crime ;
 int msleep (int) ;
 int unreachable () ;

__attribute__((used)) static void ip32_machine_restart(char *cmd)
{
 msleep(20);
 crime->control = CRIME_CONTROL_HARD_RESET;
 unreachable();
}
