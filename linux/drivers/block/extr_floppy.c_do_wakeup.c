
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXTIMEOUT ;
 int command_done ;
 int command_status ;
 int * cont ;
 int reschedule_timeout (int ,char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void do_wakeup(void)
{
 reschedule_timeout(MAXTIMEOUT, "do wakeup");
 cont = ((void*)0);
 command_status += 2;
 wake_up(&command_done);
}
