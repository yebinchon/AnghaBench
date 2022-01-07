
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_device {unsigned long rs_total; unsigned long ov_left; int ov_start_sector; int ov_position; } ;
typedef int sector_t ;
typedef enum drbd_conns { ____Placeholder_drbd_conns } drbd_conns ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {int agreed_pro_version; } ;


 int BM_BIT_TO_SECT (int) ;
 unsigned long BM_SECT_TO_BIT (int ) ;
 int C_VERIFY_T ;
 unsigned long drbd_bm_bits (struct drbd_device*) ;
 TYPE_2__* first_peer_device (struct drbd_device*) ;

__attribute__((used)) static void set_ov_position(struct drbd_device *device, enum drbd_conns cs)
{
 if (first_peer_device(device)->connection->agreed_pro_version < 90)
  device->ov_start_sector = 0;
 device->rs_total = drbd_bm_bits(device);
 device->ov_position = 0;
 if (cs == C_VERIFY_T) {





  device->ov_start_sector = ~(sector_t)0;
 } else {
  unsigned long bit = BM_SECT_TO_BIT(device->ov_start_sector);
  if (bit >= device->rs_total) {
   device->ov_start_sector =
    BM_BIT_TO_SECT(device->rs_total - 1);
   device->rs_total = 1;
  } else
   device->rs_total -= bit;
  device->ov_position = device->ov_start_sector;
 }
 device->ov_left = device->rs_total;
}
