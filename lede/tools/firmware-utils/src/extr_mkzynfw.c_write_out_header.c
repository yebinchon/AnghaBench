
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int t ;
struct zyn_rombin_hdr {void* mmap_addr; void* ccsum; void* ocsum; void* flags; void* csize; void* osize; void* type; void* addr; int sig; } ;
typedef int FILE ;


 int DBG (int,char*,void*) ;
 int ERRS (char*) ;
 void* HOST_TO_BE16 (void*) ;
 void* HOST_TO_BE32 (void*) ;
 int ROMBIN_SIGNATURE ;
 int ROMBIN_SIG_LEN ;
 int SEEK_SET ;
 scalar_t__ errno ;
 scalar_t__ fseek (int *,int ,int ) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct zyn_rombin_hdr*,int ,int) ;
 int write_out_data (int *,int *,int,int *) ;

int
write_out_header(FILE *outfile, struct zyn_rombin_hdr *hdr)
{
 struct zyn_rombin_hdr t;

 errno = 0;
 if (fseek(outfile, 0, SEEK_SET) != 0) {
  ERRS("fseek failed on output file");
  return -1;
 }


 memset(&t, 0, sizeof(t));
 t.addr = HOST_TO_BE32(hdr->addr);
 memcpy(&t.sig, ROMBIN_SIGNATURE, ROMBIN_SIG_LEN);
 t.type = hdr->type;
 t.flags = hdr->flags;
 t.osize = HOST_TO_BE32(hdr->osize);
 t.csize = HOST_TO_BE32(hdr->csize);
 t.ocsum = HOST_TO_BE16(hdr->ocsum);
 t.ccsum = HOST_TO_BE16(hdr->ccsum);
 t.mmap_addr = HOST_TO_BE32(hdr->mmap_addr);

 DBG(2, "hdr.addr      = 0x%08x", hdr->addr);
 DBG(2, "hdr.type      = 0x%02x", hdr->type);
 DBG(2, "hdr.osize     = 0x%08x", hdr->osize);
 DBG(2, "hdr.csize     = 0x%08x", hdr->csize);
 DBG(2, "hdr.flags     = 0x%02x", hdr->flags);
 DBG(2, "hdr.ocsum     = 0x%04x", hdr->ocsum);
 DBG(2, "hdr.ccsum     = 0x%04x", hdr->ccsum);
 DBG(2, "hdr.mmap_addr = 0x%08x", hdr->mmap_addr);

 return write_out_data(outfile, (uint8_t *)&t, sizeof(t), ((void*)0));
}
