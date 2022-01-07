
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mylo_fw_header {void* flags; void* fwlo; void* fwhi; void* rev; void* sdid; void* svid; void* did; void* vid; void* crc; void* magic; } ;
typedef int hdr ;
struct TYPE_2__ {int flags; int fwlo; int fwhi; int rev; int sdid; int svid; int did; int vid; int crc; } ;
typedef int FILE ;


 void* HOST_TO_LE16 (int ) ;
 void* HOST_TO_LE32 (int ) ;
 int MYLO_MAGIC_FIRMWARE ;
 int SEEK_SET ;
 int errmsg (int,char*) ;
 scalar_t__ fseek (int *,int ,int ) ;
 TYPE_1__ fw_header ;
 int memset (struct mylo_fw_header*,int ,int) ;
 int write_out_data (int *,int *,int,int *) ;

int
write_out_header(FILE *outfile, uint32_t *crc)
{
 struct mylo_fw_header hdr;

 memset(&hdr, 0, sizeof(hdr));

 hdr.magic = HOST_TO_LE32(MYLO_MAGIC_FIRMWARE);
 hdr.crc = HOST_TO_LE32(fw_header.crc);
 hdr.vid = HOST_TO_LE16(fw_header.vid);
 hdr.did = HOST_TO_LE16(fw_header.did);
 hdr.svid = HOST_TO_LE16(fw_header.svid);
 hdr.sdid = HOST_TO_LE16(fw_header.sdid);
 hdr.rev = HOST_TO_LE32(fw_header.rev);
 hdr.fwhi = HOST_TO_LE32(fw_header.fwhi);
 hdr.fwlo = HOST_TO_LE32(fw_header.fwlo);
 hdr.flags = HOST_TO_LE32(fw_header.flags);

 if (fseek(outfile, 0, SEEK_SET) != 0) {
  errmsg(1,"fseek failed on output file");
  return -1;
 }

 return write_out_data(outfile, (uint8_t *)&hdr, sizeof(hdr), crc);
}
