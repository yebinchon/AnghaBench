
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it821x_dev {scalar_t__* mwdma; int * pio; } ;
struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {struct it821x_dev* private_data; } ;
struct ata_device {int devno; } ;


 scalar_t__ MWDMA_OFF ;
 int ata_bmdma_stop (struct ata_queued_cmd*) ;
 int it821x_program (struct ata_port*,struct ata_device*,int ) ;

__attribute__((used)) static void it821x_passthru_bmdma_stop(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_device *adev = qc->dev;
 struct it821x_dev *itdev = ap->private_data;
 int unit = adev->devno;

 ata_bmdma_stop(qc);
 if (itdev->mwdma[unit] != MWDMA_OFF)
  it821x_program(ap, adev, itdev->pio[unit]);
}
