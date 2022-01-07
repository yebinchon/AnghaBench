
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int dev; struct ata_port* ap; } ;
struct ata_port {int dummy; } ;


 int ata_bmdma_start (struct ata_queued_cmd*) ;
 int sl82c105_configure_dmamode (struct ata_port*,int ) ;
 int sl82c105_reset_engine (struct ata_port*) ;
 int udelay (int) ;

__attribute__((used)) static void sl82c105_bmdma_start(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;

 udelay(100);
 sl82c105_reset_engine(ap);
 udelay(100);


 sl82c105_configure_dmamode(ap, qc->dev);

 ata_bmdma_start(qc);
}
