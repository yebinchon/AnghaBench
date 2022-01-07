
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
struct drbd_device {TYPE_1__ state; } ;


 int CS_VERBOSE ;
 int C_CONNECTED ;


 int C_SYNC_SOURCE ;
 int C_WF_SYNC_UUID ;
 int NS (int ,int ) ;
 int _drbd_request_state (struct drbd_device*,int ,int ) ;
 int conn ;
 int drbd_err (struct drbd_device*,char*) ;
 int drbd_start_resync (struct drbd_device*,int ) ;

__attribute__((used)) static void abw_start_sync(struct drbd_device *device, int rv)
{
 if (rv) {
  drbd_err(device, "Writing the bitmap failed not starting resync.\n");
  _drbd_request_state(device, NS(conn, C_CONNECTED), CS_VERBOSE);
  return;
 }

 switch (device->state.conn) {
 case 128:
  _drbd_request_state(device, NS(conn, C_WF_SYNC_UUID), CS_VERBOSE);
  break;
 case 129:
  drbd_start_resync(device, C_SYNC_SOURCE);
  break;
 }
}
