
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union drbd_dev_state {int disk; int conn; } ;
struct drbd_device {union drbd_dev_state state; } ;
typedef enum drbd_disk_state { ____Placeholder_drbd_disk_state } drbd_disk_state ;
typedef enum drbd_conns { ____Placeholder_drbd_conns } drbd_conns ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {int agreed_pro_version; } ;
 TYPE_2__* first_peer_device (struct drbd_device*) ;

__attribute__((used)) static inline int drbd_state_is_stable(struct drbd_device *device)
{
 union drbd_dev_state s = device->state;




 switch ((enum drbd_conns)s.conn) {

 case 152:
 case 140:

 case 159:
 case 149:
 case 148:
 case 144:
 case 143:
 case 155:
 case 154:
 case 162:
 case 161:

 case 158:
 case 145:
 case 146:
 case 160:
 case 156:
 case 153:
 case 147:
 case 139:
 case 151:
 case 150:
  break;


 case 142:
  if (first_peer_device(device)->connection->agreed_pro_version < 96)
   return 0;
  break;


 case 141:
 case 138:
 case 157:

  return 0;
 }

 switch ((enum drbd_disk_state)s.disk) {
 case 135:
 case 133:
 case 130:
 case 136:
 case 128:
 case 134:

  break;


 case 137:
 case 131:
 case 129:
 case 132:

  return 0;
 }

 return 1;
}
