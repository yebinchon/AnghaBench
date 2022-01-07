
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip; int utime; scalar_t__ pid; scalar_t__ port; } ;


 TYPE_1__ PID ;
 scalar_t__ getpid () ;
 int time (int *) ;

__attribute__((used)) static void update_pid (unsigned ip) {
  if (!PID.pid) {
    PID.port = 0;
    PID.pid = getpid ();
    PID.utime = time (((void*)0));
  }
  if (!PID.ip && PID.ip != 0x7f000001) {
    PID.ip = ip;
  }
}
