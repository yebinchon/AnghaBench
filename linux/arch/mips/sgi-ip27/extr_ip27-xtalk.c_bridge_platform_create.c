
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; unsigned long start; int flags; void* end; } ;
struct TYPE_3__ {char* name; unsigned long start; int flags; void* end; } ;
struct xtalk_bridge_platform_data {int masterwid; unsigned long mem_offset; unsigned long io_offset; TYPE_2__ io; TYPE_1__ mem; int nasid; scalar_t__ intr_addr; int bridge_addr; } ;
struct platform_device {int dummy; } ;
typedef int nasid_t ;


 scalar_t__ BIT_ULL (int) ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 unsigned long NODE_OFFSET (int ) ;
 scalar_t__ PI_INT_PEND_MOD ;
 int PLATFORM_DEVID_AUTO ;
 int RAW_NODE_SWIN_BASE (int ,int) ;
 void* SWIN_SIZE ;
 int SWIN_SIZE_BITS ;
 int kfree (struct xtalk_bridge_platform_data*) ;
 struct xtalk_bridge_platform_data* kzalloc (int,int ) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,struct xtalk_bridge_platform_data*,int) ;
 struct platform_device* platform_device_alloc (char*,int ) ;
 int pr_info (char*,int ,int) ;
 int pr_warn (char*,int ,int) ;

__attribute__((used)) static void bridge_platform_create(nasid_t nasid, int widget, int masterwid)
{
 struct xtalk_bridge_platform_data *bd;
 struct platform_device *pdev;
 unsigned long offset;

 bd = kzalloc(sizeof(*bd), GFP_KERNEL);
 if (!bd)
  goto no_mem;
 pdev = platform_device_alloc("xtalk-bridge", PLATFORM_DEVID_AUTO);
 if (!pdev) {
  kfree(bd);
  goto no_mem;
 }

 offset = NODE_OFFSET(nasid);

 bd->bridge_addr = RAW_NODE_SWIN_BASE(nasid, widget);
 bd->intr_addr = BIT_ULL(47) + 0x01800000 + PI_INT_PEND_MOD;
 bd->nasid = nasid;
 bd->masterwid = masterwid;

 bd->mem.name = "Bridge PCI MEM";
 bd->mem.start = offset + (widget << SWIN_SIZE_BITS);
 bd->mem.end = bd->mem.start + SWIN_SIZE - 1;
 bd->mem.flags = IORESOURCE_MEM;
 bd->mem_offset = offset;

 bd->io.name = "Bridge PCI IO";
 bd->io.start = offset + (widget << SWIN_SIZE_BITS);
 bd->io.end = bd->io.start + SWIN_SIZE - 1;
 bd->io.flags = IORESOURCE_IO;
 bd->io_offset = offset;

 platform_device_add_data(pdev, bd, sizeof(*bd));
 platform_device_add(pdev);
 pr_info("xtalk:n%d/%x bridge widget\n", nasid, widget);
 return;

no_mem:
 pr_warn("xtalk:n%d/%x bridge create out of memory\n", nasid, widget);
}
