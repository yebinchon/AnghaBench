
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pci_pbm_info {int config_space_reg_bits; int chip_type; void* chip_revision; void* chip_version; int name; scalar_t__ sync_reg; scalar_t__ controller_regs; scalar_t__ pbm_regs; struct platform_device* op; int portid; scalar_t__ index; int * pci_ops; int numa_node; struct pci_pbm_info* next; } ;
struct linux_prom64_registers {scalar_t__ phys_addr; } ;
struct device_node {int full_name; } ;


 int NUMA_NO_NODE ;



 struct linux_prom64_registers* of_get_property (struct device_node*,char*,int *) ;
 void* of_getintprop_default (struct device_node*,char*,int ) ;
 int pci_determine_mem_io_space (struct pci_pbm_info*) ;
 int pci_get_pbm_props (struct pci_pbm_info*) ;
 int pci_num_pbms ;
 struct pci_pbm_info* pci_pbm_root ;
 int printk (char*,int ,char const*,void*,void*) ;
 int schizo_pbm_hw_init (struct pci_pbm_info*) ;
 int schizo_pbm_iommu_init (struct pci_pbm_info*) ;
 int schizo_pbm_strbuf_init (struct pci_pbm_info*) ;
 int schizo_scan_bus (struct pci_pbm_info*,TYPE_1__*) ;
 int sun4u_pci_ops ;

__attribute__((used)) static int schizo_pbm_init(struct pci_pbm_info *pbm,
      struct platform_device *op, u32 portid,
      int chip_type)
{
 const struct linux_prom64_registers *regs;
 struct device_node *dp = op->dev.of_node;
 const char *chipset_name;
 int err;

 switch (chip_type) {
 case 128:
  chipset_name = "TOMATILLO";
  break;

 case 129:
  chipset_name = "SCHIZO+";
  break;

 case 130:
 default:
  chipset_name = "SCHIZO";
  break;
 }
 regs = of_get_property(dp, "reg", ((void*)0));

 pbm->next = pci_pbm_root;
 pci_pbm_root = pbm;

 pbm->numa_node = NUMA_NO_NODE;

 pbm->pci_ops = &sun4u_pci_ops;
 pbm->config_space_reg_bits = 8;

 pbm->index = pci_num_pbms++;

 pbm->portid = portid;
 pbm->op = op;

 pbm->chip_type = chip_type;
 pbm->chip_version = of_getintprop_default(dp, "version#", 0);
 pbm->chip_revision = of_getintprop_default(dp, "module-version#", 0);

 pbm->pbm_regs = regs[0].phys_addr;
 pbm->controller_regs = regs[1].phys_addr - 0x10000UL;

 if (chip_type == 128)
  pbm->sync_reg = regs[3].phys_addr + 0x1a18UL;

 pbm->name = dp->full_name;

 printk("%s: %s PCI Bus Module ver[%x:%x]\n",
        pbm->name, chipset_name,
        pbm->chip_version, pbm->chip_revision);

 schizo_pbm_hw_init(pbm);

 pci_determine_mem_io_space(pbm);

 pci_get_pbm_props(pbm);

 err = schizo_pbm_iommu_init(pbm);
 if (err)
  return err;

 schizo_pbm_strbuf_init(pbm);

 schizo_scan_bus(pbm, &op->dev);

 return 0;
}
