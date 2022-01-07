
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct moxtet {int* modules; int dev; scalar_t__ count; } ;
typedef int cnts ;
struct TYPE_2__ {int desc; } ;


 int ENODEV ;
 int TURRIS_MOX_CPU_ID_EMMC ;
 int TURRIS_MOX_CPU_ID_SD ;
 int TURRIS_MOX_MAX_MODULES ;
 int TURRIS_MOX_MODULE_LAST ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,...) ;
 int dev_warn (int ,char*,int) ;
 int memset (int*,int ,int) ;
 scalar_t__ mox_module_known (int) ;
 TYPE_1__* mox_module_table ;
 scalar_t__ moxtet_set_irq (struct moxtet*,int,int,int ) ;
 int spi_read (int ,int*,int) ;
 int to_spi_device (int ) ;

__attribute__((used)) static int moxtet_find_topology(struct moxtet *moxtet)
{
 u8 buf[TURRIS_MOX_MAX_MODULES];
 int cnts[TURRIS_MOX_MODULE_LAST];
 int i, ret;

 memset(cnts, 0, sizeof(cnts));

 ret = spi_read(to_spi_device(moxtet->dev), buf, TURRIS_MOX_MAX_MODULES);
 if (ret < 0)
  return ret;

 if (buf[0] == TURRIS_MOX_CPU_ID_EMMC) {
  dev_info(moxtet->dev, "Found MOX A (eMMC CPU) module\n");
 } else if (buf[0] == TURRIS_MOX_CPU_ID_SD) {
  dev_info(moxtet->dev, "Found MOX A (CPU) module\n");
 } else {
  dev_err(moxtet->dev, "Invalid Turris MOX A CPU module 0x%02x\n",
   buf[0]);
  return -ENODEV;
 }

 moxtet->count = 0;

 for (i = 1; i < TURRIS_MOX_MAX_MODULES; ++i) {
  int id;

  if (buf[i] == 0xff)
   break;

  id = buf[i] & 0xf;

  moxtet->modules[i-1] = id;
  ++moxtet->count;

  if (mox_module_known(id)) {
   dev_info(moxtet->dev, "Found %s module\n",
     mox_module_table[id].desc);

   if (moxtet_set_irq(moxtet, i-1, id, cnts[id]++) < 0)
    dev_err(moxtet->dev,
     "  Cannot set IRQ for module %s\n",
     mox_module_table[id].desc);
  } else {
   dev_warn(moxtet->dev,
     "Unknown Moxtet module found (ID 0x%02x)\n",
     id);
  }
 }

 return 0;
}
