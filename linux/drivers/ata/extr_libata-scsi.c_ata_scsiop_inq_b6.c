
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_scsi_args {TYPE_1__* dev; } ;
struct TYPE_2__ {int zac_zoned_cap; int zac_zones_max_open; int zac_zones_optimal_nonseq; int zac_zones_optimal_open; } ;


 int put_unaligned_be32 (int ,int*) ;

__attribute__((used)) static unsigned int ata_scsiop_inq_b6(struct ata_scsi_args *args, u8 *rbuf)
{



 rbuf[1] = 0xb6;
 rbuf[3] = 0x3C;




 if (args->dev->zac_zoned_cap & 1)
  rbuf[4] |= 1;
 put_unaligned_be32(args->dev->zac_zones_optimal_open, &rbuf[8]);
 put_unaligned_be32(args->dev->zac_zones_optimal_nonseq, &rbuf[12]);
 put_unaligned_be32(args->dev->zac_zones_max_open, &rbuf[16]);

 return 0;
}
