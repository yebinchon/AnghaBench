
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {int dummy; } ;


 int ata_bmdma_stop (struct ata_queued_cmd*) ;

__attribute__((used)) static void __ata_bmdma_stop(struct ata_port *ap)
{
 struct ata_queued_cmd qc;

 qc.ap = ap;
 ata_bmdma_stop(&qc);
}
