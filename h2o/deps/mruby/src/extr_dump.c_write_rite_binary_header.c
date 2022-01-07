
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rite_binary_header {int* binary_crc; int binary_size; int compiler_version; int compiler_name; int binary_version; int binary_ident; } ;
typedef int mrb_state ;





 int MRB_DUMP_OK ;
 int RITE_BINARY_FORMAT_VER ;
 int RITE_BINARY_IDENT ;
 int RITE_BINARY_IDENT_LIL ;
 int RITE_COMPILER_NAME ;
 int RITE_COMPILER_VERSION ;
 size_t UINT32_MAX ;
 int bigendian_p () ;
 int calc_crc_16_ccitt (int*,int,int ) ;
 int memcpy (int ,int ,int) ;
 int mrb_assert (int) ;
 int uint16_to_bin (int ,int*) ;
 int uint32_to_bin (int,int ) ;

__attribute__((used)) static int
write_rite_binary_header(mrb_state *mrb, size_t binary_size, uint8_t *bin, uint8_t flags)
{
  struct rite_binary_header *header = (struct rite_binary_header *)bin;
  uint16_t crc;
  uint32_t offset;

  switch (flags & 128) {
  endian_big:
  case 130:
    memcpy(header->binary_ident, RITE_BINARY_IDENT, sizeof(header->binary_ident));
    break;
  endian_little:
  case 129:
    memcpy(header->binary_ident, RITE_BINARY_IDENT_LIL, sizeof(header->binary_ident));
    break;

  case 128:
    if (bigendian_p()) goto endian_big;
    goto endian_little;
    break;
  }

  memcpy(header->binary_version, RITE_BINARY_FORMAT_VER, sizeof(header->binary_version));
  memcpy(header->compiler_name, RITE_COMPILER_NAME, sizeof(header->compiler_name));
  memcpy(header->compiler_version, RITE_COMPILER_VERSION, sizeof(header->compiler_version));
  mrb_assert(binary_size <= UINT32_MAX);
  uint32_to_bin((uint32_t)binary_size, header->binary_size);

  offset = (uint32_t)((&(header->binary_crc[0]) - bin) + sizeof(uint16_t));
  crc = calc_crc_16_ccitt(bin + offset, binary_size - offset, 0);
  uint16_to_bin(crc, header->binary_crc);

  return MRB_DUMP_OK;
}
