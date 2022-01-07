
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_8__ {scalar_t__ num_boxes; } ;
struct TYPE_7__ {scalar_t__ x86_max_cores; int x86_model; int phys_proc_id; } ;
struct TYPE_6__ {int constraints; } ;
struct TYPE_5__ {struct pci_dev** dev; } ;


 size_t BDX_MSR_UNCORE_SBOX ;
 size_t HSWEP_PCI_PCU_3 ;
 int ** bdx_msr_uncores ;
 TYPE_4__ bdx_uncore_cbox ;
 int bdx_uncore_pcu_constraints ;
 TYPE_3__ boot_cpu_data ;
 TYPE_2__ hswep_uncore_pcu ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int topology_phys_to_logical_pkg (int ) ;
 TYPE_1__* uncore_extra_pci_dev ;
 int ** uncore_msr_uncores ;

void bdx_uncore_cpu_init(void)
{
 int pkg = topology_phys_to_logical_pkg(boot_cpu_data.phys_proc_id);

 if (bdx_uncore_cbox.num_boxes > boot_cpu_data.x86_max_cores)
  bdx_uncore_cbox.num_boxes = boot_cpu_data.x86_max_cores;
 uncore_msr_uncores = bdx_msr_uncores;


 if (boot_cpu_data.x86_model == 86) {
  uncore_msr_uncores[BDX_MSR_UNCORE_SBOX] = ((void*)0);

 } else if (uncore_extra_pci_dev[pkg].dev[HSWEP_PCI_PCU_3]) {
  struct pci_dev *pdev;
  u32 capid4;

  pdev = uncore_extra_pci_dev[pkg].dev[HSWEP_PCI_PCU_3];
  pci_read_config_dword(pdev, 0x94, &capid4);
  if (((capid4 >> 6) & 0x3) == 0)
   bdx_msr_uncores[BDX_MSR_UNCORE_SBOX] = ((void*)0);
 }
 hswep_uncore_pcu.constraints = bdx_uncore_pcu_constraints;
}
