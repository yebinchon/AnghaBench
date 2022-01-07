
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ip; } ;


 TYPE_1__ PID ;
 int init_common_PID () ;

void init_client_PID (unsigned ip) {
  if (ip && ip != 0x7f000001) {
    PID.ip = ip;
  }

  init_common_PID ();
}
