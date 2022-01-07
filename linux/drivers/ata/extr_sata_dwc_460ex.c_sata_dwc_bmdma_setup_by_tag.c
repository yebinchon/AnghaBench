
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_queued_cmd {int tf; int ap; } ;


 int SATA_DWC_CMD_ISSUED_PEND ;
 int sata_dwc_exec_command_by_tag (int ,int *,int ,int ) ;

__attribute__((used)) static void sata_dwc_bmdma_setup_by_tag(struct ata_queued_cmd *qc, u8 tag)
{
 sata_dwc_exec_command_by_tag(qc->ap, &qc->tf, tag,
         SATA_DWC_CMD_ISSUED_PEND);
}
