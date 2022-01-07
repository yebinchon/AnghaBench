
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int mrb_state ;
typedef int mrb_irep ;


 int MRB_DUMP_GENERAL_FAILURE ;
 int MRB_DUMP_OK ;
 scalar_t__ SIZE_ERROR_MUL (size_t,int) ;
 size_t bin_to_uint16 (int const*) ;
 scalar_t__ bin_to_uint32 (int const*) ;

__attribute__((used)) static int
read_lineno_record_1(mrb_state *mrb, const uint8_t *bin, mrb_irep *irep, size_t *len)
{
  size_t i, fname_len, niseq;

  *len = 0;
  bin += sizeof(uint32_t);
  *len += sizeof(uint32_t);
  fname_len = bin_to_uint16(bin);
  bin += sizeof(uint16_t);
  *len += sizeof(uint16_t);
  bin += fname_len;
  *len += fname_len;

  niseq = (size_t)bin_to_uint32(bin);
  bin += sizeof(uint32_t);
  *len += sizeof(uint32_t);

  if (SIZE_ERROR_MUL(niseq, sizeof(uint16_t))) {
    return MRB_DUMP_GENERAL_FAILURE;
  }
  for (i = 0; i < niseq; i++) {
    bin += sizeof(uint16_t);
    *len += sizeof(uint16_t);
  }

  return MRB_DUMP_OK;
}
