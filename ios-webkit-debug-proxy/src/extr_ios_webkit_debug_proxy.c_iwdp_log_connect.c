
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* iwdp_iport_t ;
struct TYPE_3__ {char* device_id; int port; char* device_name; } ;


 int printf (char*,int,...) ;

void iwdp_log_connect(iwdp_iport_t iport) {
  if (iport->device_id) {
    printf("Connected :%d to %s (%s)\n", iport->port, iport->device_name,
        iport->device_id);
  } else {
    printf("Listing devices on :%d\n", iport->port);
  }
}
