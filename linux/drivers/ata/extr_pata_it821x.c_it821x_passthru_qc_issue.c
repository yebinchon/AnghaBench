
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {TYPE_1__* dev; int ap; } ;
struct TYPE_2__ {int devno; } ;


 unsigned int ata_bmdma_qc_issue (struct ata_queued_cmd*) ;
 int it821x_passthru_dev_select (int ,int ) ;

__attribute__((used)) static unsigned int it821x_passthru_qc_issue(struct ata_queued_cmd *qc)
{
 it821x_passthru_dev_select(qc->ap, qc->dev->devno);
 return ata_bmdma_qc_issue(qc);
}
