
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fw_header {void* flags; void* firmware_len; void* hw_id; } ;


 int HEADER_FLAGS ;
 void* HOST_TO_LE32 (int ) ;
 int firmware_len ;
 int hw_id ;
 int memset (struct fw_header*,int ,int) ;

__attribute__((used)) static void fill_header(uint8_t *buf)
{
 struct fw_header *hdr = (struct fw_header *) buf;

 memset(hdr, 0, sizeof (struct fw_header));
 hdr->hw_id = HOST_TO_LE32(hw_id);
 hdr->firmware_len = HOST_TO_LE32(firmware_len);
 hdr->flags = HOST_TO_LE32(HEADER_FLAGS);
}
