
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct zpodd {scalar_t__ mech_type; } ;
struct ata_device {TYPE_2__* link; struct zpodd* zpodd; } ;
struct TYPE_4__ {TYPE_1__* ap; } ;
struct TYPE_3__ {scalar_t__* sector_buf; } ;


 scalar_t__ NOT_READY ;
 scalar_t__ ODD_MECH_TYPE_SLOT ;
 unsigned int atapi_eh_request_sense (struct ata_device*,scalar_t__*,scalar_t__) ;
 unsigned int atapi_eh_tur (struct ata_device*,scalar_t__*) ;

__attribute__((used)) static bool zpready(struct ata_device *dev)
{
 u8 sense_key, *sense_buf;
 unsigned int ret, asc, ascq, add_len;
 struct zpodd *zpodd = dev->zpodd;

 ret = atapi_eh_tur(dev, &sense_key);

 if (!ret || sense_key != NOT_READY)
  return 0;

 sense_buf = dev->link->ap->sector_buf;
 ret = atapi_eh_request_sense(dev, sense_buf, sense_key);
 if (ret)
  return 0;


 if ((sense_buf[0] & 0x7f) != 0x70)
  return 0;

 add_len = sense_buf[7];

 if (add_len < 6)
  return 0;

 asc = sense_buf[12];
 ascq = sense_buf[13];

 if (zpodd->mech_type == ODD_MECH_TYPE_SLOT)

  return asc == 0x3a;
 else

  return asc == 0x3a && ascq == 0x01;
}
