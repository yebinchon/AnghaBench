
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int len; int magic; int crc_ver_init; int config_refresh; int config_ncdl; } ;
typedef TYPE_1__ nvram_header_t ;
struct TYPE_7__ {int offset; int length; } ;
typedef TYPE_2__ nvram_handle_t ;


 int NVRAM_CRC_START_POSITION ;
 int hndcrc8 (unsigned char*,int,int) ;
 TYPE_1__* nvram_header (TYPE_2__*) ;
 int printf (char*,int,...) ;

__attribute__((used)) static int do_info(nvram_handle_t *nvram)
{
 nvram_header_t *hdr = nvram_header(nvram);


 uint8_t crc = hndcrc8((unsigned char *) &hdr[0] + NVRAM_CRC_START_POSITION,
  hdr->len - NVRAM_CRC_START_POSITION, 0xff);


 printf("Magic:         0x%08X\n", hdr->magic);
 printf("Length:        0x%08X\n", hdr->len);
 printf("Offset:        0x%08X\n", nvram->offset);

 printf("CRC8:          0x%02X (calculated: 0x%02X)\n",
  hdr->crc_ver_init & 0xFF, crc);

 printf("Version:       0x%02X\n", (hdr->crc_ver_init >> 8) & 0xFF);
 printf("SDRAM init:    0x%04X\n", (hdr->crc_ver_init >> 16) & 0xFFFF);
 printf("SDRAM config:  0x%04X\n", hdr->config_refresh & 0xFFFF);
 printf("SDRAM refresh: 0x%04X\n", (hdr->config_refresh >> 16) & 0xFFFF);
 printf("NCDL values:   0x%08X\n\n", hdr->config_ncdl);

 printf("%i bytes used / %i bytes available (%.2f%%)\n",
  hdr->len, nvram->length - nvram->offset - hdr->len,
  (100.00 / (double)(nvram->length - nvram->offset)) * (double)hdr->len);

 return 0;
}
