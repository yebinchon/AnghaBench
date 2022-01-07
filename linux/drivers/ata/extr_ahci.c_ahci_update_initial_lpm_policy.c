
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int target_lpm_policy; } ;
struct ahci_host_priv {int flags; int cap; } ;
struct TYPE_2__ {int flags; } ;


 int ACPI_FADT_LOW_POWER_S0 ;
 int AHCI_HFLAG_IS_MOBILE ;
 int ATA_LPM_MED_POWER ;
 int ATA_LPM_MIN_POWER ;
 int ATA_LPM_MIN_POWER_WITH_PARTIAL ;
 int ATA_LPM_UNKNOWN ;
 int CONFIG_SATA_MOBILE_LPM_POLICY ;
 int HOST_CAP_PART ;
 int HOST_CAP_SSC ;
 TYPE_1__ acpi_gbl_FADT ;
 int mobile_lpm_policy ;

__attribute__((used)) static void ahci_update_initial_lpm_policy(struct ata_port *ap,
        struct ahci_host_priv *hpriv)
{
 int policy = CONFIG_SATA_MOBILE_LPM_POLICY;



 if (!(hpriv->flags & AHCI_HFLAG_IS_MOBILE))
  return;


 if (mobile_lpm_policy != -1) {
  policy = mobile_lpm_policy;
  goto update_policy;
 }
update_policy:
 if (policy >= ATA_LPM_UNKNOWN && policy <= ATA_LPM_MIN_POWER)
  ap->target_lpm_policy = policy;
}
