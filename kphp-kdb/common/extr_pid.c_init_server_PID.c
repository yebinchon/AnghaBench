
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ip; int port; } ;


 TYPE_1__ PID ;
 int init_common_PID () ;

void init_server_PID (unsigned ip, int port) {
  if (ip && ip != 0x7f000001) {
    PID.ip = ip;
  }
  if (!PID.port) {
    PID.port = port;
  }
  init_common_PID ();
}
