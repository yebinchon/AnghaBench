
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct b53_device {int chip_id; int core_rev; } ;


 int B53_DEVICE_ID ;
 int B53_MGMT_PAGE ;
 int B53_REV_ID ;
 int B53_REV_ID_25 ;
 int B53_STAT_PAGE ;
 int B53_VLAN_PAGE ;
 int B53_VLAN_TABLE_ACCESS_25 ;
 scalar_t__ BCM5325_DEVICE_ID ;
 int BCM5365_DEVICE_ID ;



 int ENODEV ;
 int b53_read16 (struct b53_device*,int ,int ,int*) ;
 int b53_read32 (struct b53_device*,int ,int ,int*) ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_write16 (struct b53_device*,int ,int ,int) ;
 int pr_err (char*,int,int) ;

int b53_switch_detect(struct b53_device *dev)
{
 u32 id32;
 u16 tmp;
 u8 id8;
 int ret;

 ret = b53_read8(dev, B53_MGMT_PAGE, B53_DEVICE_ID, &id8);
 if (ret)
  return ret;

 switch (id8) {
 case 0:
  b53_write16(dev, B53_VLAN_PAGE, B53_VLAN_TABLE_ACCESS_25, 0xf);
  b53_read16(dev, B53_VLAN_PAGE, B53_VLAN_TABLE_ACCESS_25, &tmp);

  if (tmp == 0xf)
   dev->chip_id = BCM5325_DEVICE_ID;
  else
   dev->chip_id = BCM5365_DEVICE_ID;
  break;
 case 130:
 case 129:
 case 128:
  dev->chip_id = id8;
  break;
 default:
  ret = b53_read32(dev, B53_MGMT_PAGE, B53_DEVICE_ID, &id32);
  if (ret)
   return ret;

  switch (id32) {
  case 133:
  case 132:
  case 131:
  case 138:
  case 137:
  case 136:
  case 135:
  case 134:
   dev->chip_id = id32;
   break;
  default:
   pr_err("unsupported switch detected (BCM53%02x/BCM%x)\n",
          id8, id32);
   return -ENODEV;
  }
 }

 if (dev->chip_id == BCM5325_DEVICE_ID)
  return b53_read8(dev, B53_STAT_PAGE, B53_REV_ID_25,
     &dev->core_rev);
 else
  return b53_read8(dev, B53_MGMT_PAGE, B53_REV_ID,
     &dev->core_rev);
}
