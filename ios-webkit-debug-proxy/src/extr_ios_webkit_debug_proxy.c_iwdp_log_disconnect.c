
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* iwdp_iport_t ;
struct TYPE_5__ {int port; char* device_name; char* device_id; TYPE_1__* iwi; } ;
struct TYPE_4__ {scalar_t__ connected; } ;


 int printf (char*,...) ;

void iwdp_log_disconnect(iwdp_iport_t iport) {
  if (iport->iwi && iport->iwi->connected) {
    printf("Disconnected :%d from %s (%s)\n", iport->port,
        iport->device_name, iport->device_id);
  } else {
    printf("Unable to connect to %s (%s)\n  Please"
        " verify that Settings > Safari > Advanced > Web Inspector = ON\n",
        iport->device_name, iport->device_id);
  }
}
