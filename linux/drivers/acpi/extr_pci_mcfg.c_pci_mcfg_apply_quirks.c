
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct resource {scalar_t__ start; } ;
struct pci_ecam_ops {int dummy; } ;
struct mcfg_fixup {struct pci_ecam_ops* ops; struct resource cfgres; } ;
struct acpi_pci_root {TYPE_1__* device; struct resource secondary; int segment; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (struct mcfg_fixup*) ;
 int dev_info (int *,char*,struct resource*,struct resource*,struct pci_ecam_ops*) ;
 struct mcfg_fixup* mcfg_quirks ;
 scalar_t__ pci_mcfg_quirk_matches (struct mcfg_fixup*,int ,struct resource*) ;

__attribute__((used)) static void pci_mcfg_apply_quirks(struct acpi_pci_root *root,
      struct resource *cfgres,
      struct pci_ecam_ops **ecam_ops)
{
}
