
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ata_queued_cmd {unsigned int err_mask; } ;
struct ata_eh_info {int serror; } ;
struct TYPE_3__ {struct ata_eh_info eh_info; } ;
struct ata_port {TYPE_1__ link; } ;


 unsigned int AC_ERR_ATA_BUS ;
 unsigned int AC_ERR_DEV ;
 unsigned int AC_ERR_HOST_BUS ;
 unsigned int AC_ERR_OTHER ;
 int PDC1_PCI_PARITY_ERR ;
 int PDC2_ATA_DMA_CNT_ERR ;
 int PDC2_ATA_HBA_ERR ;
 int PDC2_HTO_ERR ;
 int PDC_DH_ERR ;
 int PDC_DRIVE_ERR ;
 int PDC_OVERRUN_ERR ;
 int PDC_PCI_SYS_ERR ;
 int PDC_PH_ERR ;
 int PDC_SH_ERR ;
 int PDC_UNDERRUN_ERR ;
 int SCR_ERROR ;
 int ata_ehi_clear_desc (struct ata_eh_info*) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*,int) ;
 int ata_port_abort (struct ata_port*) ;
 int pdc_reset_port (struct ata_port*) ;
 int pdc_sata_scr_read (TYPE_1__*,int ,int*) ;
 scalar_t__ sata_scr_valid (TYPE_1__*) ;

__attribute__((used)) static void pdc_error_intr(struct ata_port *ap, struct ata_queued_cmd *qc,
      u32 port_status, u32 err_mask)
{
 struct ata_eh_info *ehi = &ap->link.eh_info;
 unsigned int ac_err_mask = 0;

 ata_ehi_clear_desc(ehi);
 ata_ehi_push_desc(ehi, "port_status 0x%08x", port_status);
 port_status &= err_mask;

 if (port_status & PDC_DRIVE_ERR)
  ac_err_mask |= AC_ERR_DEV;
 if (port_status & (PDC_OVERRUN_ERR | PDC_UNDERRUN_ERR))
  ac_err_mask |= AC_ERR_OTHER;
 if (port_status & (PDC2_ATA_HBA_ERR | PDC2_ATA_DMA_CNT_ERR))
  ac_err_mask |= AC_ERR_ATA_BUS;
 if (port_status & (PDC_PH_ERR | PDC_SH_ERR | PDC_DH_ERR | PDC2_HTO_ERR
      | PDC_PCI_SYS_ERR | PDC1_PCI_PARITY_ERR))
  ac_err_mask |= AC_ERR_HOST_BUS;

 if (sata_scr_valid(&ap->link)) {
  u32 serror;

  pdc_sata_scr_read(&ap->link, SCR_ERROR, &serror);
  ehi->serror |= serror;
 }

 qc->err_mask |= ac_err_mask;

 pdc_reset_port(ap);

 ata_port_abort(ap);
}
