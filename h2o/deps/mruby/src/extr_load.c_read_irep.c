
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct rite_section_header {int section_size; int section_ident; } ;
struct rite_binary_header {int dummy; } ;
typedef int mrb_state ;
typedef int mrb_irep ;


 int MRB_DUMP_OK ;
 int RITE_BINARY_EOF ;
 int RITE_SECTION_DEBUG_IDENT ;
 int RITE_SECTION_IREP_IDENT ;
 int RITE_SECTION_LINENO_IDENT ;
 int RITE_SECTION_LV_IDENT ;
 int bin_to_uint32 (int ) ;
 scalar_t__ calc_crc_16_ccitt (int const*,size_t,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 size_t offset_crc_body () ;
 int read_binary_header (int const*,size_t*,scalar_t__*,int *) ;
 int read_section_debug (int *,int const*,int *,int ) ;
 int * read_section_irep (int *,int const*,int ) ;
 int read_section_lineno (int *,int const*,int *) ;
 int read_section_lv (int *,int const*,int *,int ) ;

__attribute__((used)) static mrb_irep*
read_irep(mrb_state *mrb, const uint8_t *bin, uint8_t flags)
{
  int result;
  mrb_irep *irep = ((void*)0);
  const struct rite_section_header *section_header;
  uint16_t crc;
  size_t bin_size = 0;
  size_t n;

  if ((mrb == ((void*)0)) || (bin == ((void*)0))) {
    return ((void*)0);
  }

  result = read_binary_header(bin, &bin_size, &crc, &flags);
  if (result != MRB_DUMP_OK) {
    return ((void*)0);
  }

  n = offset_crc_body();
  if (crc != calc_crc_16_ccitt(bin + n, bin_size - n, 0)) {
    return ((void*)0);
  }

  bin += sizeof(struct rite_binary_header);
  do {
    section_header = (const struct rite_section_header *)bin;
    if (memcmp(section_header->section_ident, RITE_SECTION_IREP_IDENT, sizeof(section_header->section_ident)) == 0) {
      irep = read_section_irep(mrb, bin, flags);
      if (!irep) return ((void*)0);
    }
    else if (memcmp(section_header->section_ident, RITE_SECTION_LINENO_IDENT, sizeof(section_header->section_ident)) == 0) {
      if (!irep) return ((void*)0);
      result = read_section_lineno(mrb, bin, irep);
      if (result < MRB_DUMP_OK) {
        return ((void*)0);
      }
    }
    else if (memcmp(section_header->section_ident, RITE_SECTION_DEBUG_IDENT, sizeof(section_header->section_ident)) == 0) {
      if (!irep) return ((void*)0);
      result = read_section_debug(mrb, bin, irep, flags);
      if (result < MRB_DUMP_OK) {
        return ((void*)0);
      }
    }
    else if (memcmp(section_header->section_ident, RITE_SECTION_LV_IDENT, sizeof(section_header->section_ident)) == 0) {
      if (!irep) return ((void*)0);
      result = read_section_lv(mrb, bin, irep, flags);
      if (result < MRB_DUMP_OK) {
        return ((void*)0);
      }
    }
    bin += bin_to_uint32(section_header->section_size);
  } while (memcmp(section_header->section_ident, RITE_BINARY_EOF, sizeof(section_header->section_ident)) != 0);

  return irep;
}
