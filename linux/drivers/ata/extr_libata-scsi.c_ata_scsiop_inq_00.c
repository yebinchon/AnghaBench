
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_scsi_args {TYPE_1__* dev; } ;
typedef int pages ;
struct TYPE_2__ {int flags; } ;


 int ATA_DFLAG_ZAC ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static unsigned int ata_scsiop_inq_00(struct ata_scsi_args *args, u8 *rbuf)
{
 int num_pages;
 static const u8 pages[] = {
  0x00,
  0x80,
  0x83,
  0x89,
  0xb0,
  0xb1,
  0xb2,
  0xb6,
 };

 num_pages = sizeof(pages);
 if (!(args->dev->flags & ATA_DFLAG_ZAC))
  num_pages--;
 rbuf[3] = num_pages;
 memcpy(rbuf + 4, pages, num_pages);
 return 0;
}
