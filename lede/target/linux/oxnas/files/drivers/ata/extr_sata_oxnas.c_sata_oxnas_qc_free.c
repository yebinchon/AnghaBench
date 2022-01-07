
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int ap; } ;


 int DPRINTK (char*) ;
 int sata_oxnas_release_hw (int ) ;

__attribute__((used)) static void sata_oxnas_qc_free(struct ata_queued_cmd *qc)
{
 DPRINTK("\n");
 sata_oxnas_release_hw(qc->ap);
}
