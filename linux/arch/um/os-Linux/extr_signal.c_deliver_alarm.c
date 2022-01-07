
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int timer_alarm_handler (int ,int *,int *) ;

void deliver_alarm(void) {
    timer_alarm_handler(SIGALRM, ((void*)0), ((void*)0));
}
