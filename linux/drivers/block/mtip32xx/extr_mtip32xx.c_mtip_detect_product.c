
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct driver_data {int slot_groups; TYPE_1__* pdev; int product_type; scalar_t__ mmio; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ HOST_HSORG ;
 int HSORG_HWREV ;
 int HSORG_SLOTGROUPS ;
 unsigned int MTIP_MAX_SLOT_GROUPS ;
 int MTIP_PRODUCT_ASICFPGA ;
 int MTIP_PRODUCT_UNKNOWN ;
 int dev_info (int *,char*,unsigned int,unsigned int,unsigned int) ;
 int dev_warn (int *,char*,...) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void mtip_detect_product(struct driver_data *dd)
{
 u32 hwdata;
 unsigned int rev, slotgroups;
 hwdata = readl(dd->mmio + HOST_HSORG);

 dd->product_type = MTIP_PRODUCT_UNKNOWN;
 dd->slot_groups = 1;

 if (hwdata & 0x8) {
  dd->product_type = MTIP_PRODUCT_ASICFPGA;
  rev = (hwdata & HSORG_HWREV) >> 8;
  slotgroups = (hwdata & HSORG_SLOTGROUPS) + 1;
  dev_info(&dd->pdev->dev,
   "ASIC-FPGA design, HS rev 0x%x, "
   "%i slot groups [%i slots]\n",
    rev,
    slotgroups,
    slotgroups * 32);

  if (slotgroups > MTIP_MAX_SLOT_GROUPS) {
   dev_warn(&dd->pdev->dev,
    "Warning: driver only supports "
    "%i slot groups.\n", MTIP_MAX_SLOT_GROUPS);
   slotgroups = MTIP_MAX_SLOT_GROUPS;
  }
  dd->slot_groups = slotgroups;
  return;
 }

 dev_warn(&dd->pdev->dev, "Unrecognized product id\n");
}
