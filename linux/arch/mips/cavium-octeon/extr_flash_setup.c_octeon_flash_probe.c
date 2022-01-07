
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int base; scalar_t__ width; scalar_t__ en; } ;
union cvmx_mio_boot_reg_cfgx {TYPE_2__ s; int u64; } ;
typedef int u32 ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {char* name; int phys; int size; int copy_to; int copy_from; int write; int read; scalar_t__ bankwidth; int virt; } ;
struct TYPE_10__ {int owner; } ;


 int CVMX_MIO_BOOT_REG_CFGX (int ) ;
 int THIS_MODULE ;
 int WARN_ON (int) ;
 int cvmx_read_csr (int ) ;
 TYPE_3__* do_map_probe (char*,TYPE_5__*) ;
 TYPE_5__ flash_map ;
 int ioremap (int,int) ;
 int map_bankwidth_supported (scalar_t__) ;
 int mtd_device_parse_register (TYPE_3__*,int ,int *,int *,int ) ;
 TYPE_3__* mymtd ;
 int octeon_flash_map_copy_from ;
 int octeon_flash_map_copy_to ;
 int octeon_flash_map_read ;
 int octeon_flash_map_write ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int part_probe_types ;
 int pr_err (char*) ;
 int pr_notice (char*,int,int) ;

__attribute__((used)) static int octeon_flash_probe(struct platform_device *pdev)
{
 union cvmx_mio_boot_reg_cfgx region_cfg;
 u32 cs;
 int r;
 struct device_node *np = pdev->dev.of_node;

 r = of_property_read_u32(np, "reg", &cs);
 if (r)
  return r;





 region_cfg.u64 = cvmx_read_csr(CVMX_MIO_BOOT_REG_CFGX(cs));
 if (region_cfg.s.en) {
  flash_map.name = "phys_mapped_flash";
  flash_map.phys = region_cfg.s.base << 16;
  flash_map.size = 0x1fc00000 - flash_map.phys;

  flash_map.bankwidth = region_cfg.s.width + 1;
  flash_map.virt = ioremap(flash_map.phys, flash_map.size);
  pr_notice("Bootbus flash: Setting flash for %luMB flash at "
     "0x%08llx\n", flash_map.size >> 20, flash_map.phys);
  WARN_ON(!map_bankwidth_supported(flash_map.bankwidth));
  flash_map.read = octeon_flash_map_read;
  flash_map.write = octeon_flash_map_write;
  flash_map.copy_from = octeon_flash_map_copy_from;
  flash_map.copy_to = octeon_flash_map_copy_to;
  mymtd = do_map_probe("cfi_probe", &flash_map);
  if (mymtd) {
   mymtd->owner = THIS_MODULE;
   mtd_device_parse_register(mymtd, part_probe_types,
        ((void*)0), ((void*)0), 0);
  } else {
   pr_err("Failed to register MTD device for flash\n");
  }
 }
 return 0;
}
