
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_scsi_args {int id; } ;
typedef int hdr ;


 int ATA_ID_SERNO ;

 int ata_id_string (int ,unsigned char*,int ,int const) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static unsigned int ata_scsiop_inq_80(struct ata_scsi_args *args, u8 *rbuf)
{
 static const u8 hdr[] = {
  0,
  0x80,
  0,
  128,
 };

 memcpy(rbuf, hdr, sizeof(hdr));
 ata_id_string(args->id, (unsigned char *) &rbuf[4],
        ATA_ID_SERNO, 128);
 return 0;
}
