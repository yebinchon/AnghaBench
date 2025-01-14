
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;


 scalar_t__ CHAR_BIT ;
 scalar_t__ CRC_CARRY_BIT ;
 scalar_t__ CRC_XOR_PATTERN ;

uint16_t
calc_crc_16_ccitt(const uint8_t *src, size_t nbytes, uint16_t crc)
{
  size_t ibyte;
  uint32_t ibit;
  uint32_t crcwk = crc << 8;

  for (ibyte = 0; ibyte < nbytes; ibyte++) {
    crcwk |= *src++;
    for (ibit = 0; ibit < CHAR_BIT; ibit++) {
      crcwk <<= 1;
      if (crcwk & CRC_CARRY_BIT) {
        crcwk ^= CRC_XOR_PATTERN;
      }
    }
  }
  return (uint16_t)(crcwk >> 8);
}
