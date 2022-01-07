
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {int agreed_pro_version; } ;


 TYPE_2__* first_peer_device (struct drbd_device*) ;

__attribute__((used)) static inline bool verify_can_do_stop_sector(struct drbd_device *device)
{
 return first_peer_device(device)->connection->agreed_pro_version >= 97 &&
  first_peer_device(device)->connection->agreed_pro_version != 100;
}
