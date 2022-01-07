
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct pci_pbm_info {int dummy; } ;


 int PBM_CHIP_TYPE_PSYCHO ;
 int psycho_pbm_init_common (struct pci_pbm_info*,struct platform_device*,char*,int ) ;
 int psycho_pbm_strbuf_init (struct pci_pbm_info*,int) ;
 int psycho_scan_bus (struct pci_pbm_info*,int *) ;

__attribute__((used)) static void psycho_pbm_init(struct pci_pbm_info *pbm,
       struct platform_device *op, int is_pbm_a)
{
 psycho_pbm_init_common(pbm, op, "PSYCHO", PBM_CHIP_TYPE_PSYCHO);
 psycho_pbm_strbuf_init(pbm, is_pbm_a);
 psycho_scan_bus(pbm, &op->dev);
}
