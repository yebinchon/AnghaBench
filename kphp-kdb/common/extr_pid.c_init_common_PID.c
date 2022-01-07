
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ utime; scalar_t__ pid; } ;


 TYPE_1__ PID ;
 scalar_t__ getpid () ;
 scalar_t__ time (int ) ;

void init_common_PID (void) {
  if (!PID.pid) {
    PID.pid = getpid ();
  }
  if (!PID.utime) {
    PID.utime = time (0);
  }
}
