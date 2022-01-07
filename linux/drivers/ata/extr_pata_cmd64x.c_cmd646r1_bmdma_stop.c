
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int dummy; } ;


 int ata_bmdma_stop (struct ata_queued_cmd*) ;

__attribute__((used)) static void cmd646r1_bmdma_stop(struct ata_queued_cmd *qc)
{
 ata_bmdma_stop(qc);
}
