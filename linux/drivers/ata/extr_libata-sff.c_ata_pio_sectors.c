
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {int nbytes; int curbytes; int sect_size; int ap; TYPE_1__* dev; int tf; } ;
struct TYPE_2__ {scalar_t__ multi_count; } ;


 int WARN_ON_ONCE (int) ;
 int ata_pio_sector (struct ata_queued_cmd*) ;
 int ata_sff_sync (int ) ;
 scalar_t__ is_multi_taskfile (int *) ;
 unsigned int min (int,scalar_t__) ;

__attribute__((used)) static void ata_pio_sectors(struct ata_queued_cmd *qc)
{
 if (is_multi_taskfile(&qc->tf)) {

  unsigned int nsect;

  WARN_ON_ONCE(qc->dev->multi_count == 0);

  nsect = min((qc->nbytes - qc->curbytes) / qc->sect_size,
       qc->dev->multi_count);
  while (nsect--)
   ata_pio_sector(qc);
 } else
  ata_pio_sector(qc);

 ata_sff_sync(qc->ap);
}
