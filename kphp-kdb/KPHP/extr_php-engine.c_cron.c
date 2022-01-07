
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getppid () ;
 int master_flag ;
 int turn_sigterm_on () ;

void cron (void) {
  if (master_flag == -1 && getppid() == 1) {
    turn_sigterm_on();
  }
}
