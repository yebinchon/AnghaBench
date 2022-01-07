
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int* crc8_table ;

uint8_t hndcrc8 (
 uint8_t * pdata,
 uint32_t nbytes,
 uint8_t crc
) {
 while (nbytes-- > 0)
  crc = crc8_table[(crc ^ *pdata++) & 0xff];

 return crc;
}
