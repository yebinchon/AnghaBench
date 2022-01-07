
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POLYNOM ;

int make_crc16(int crc, char new)
{
  int i;
  crc = crc ^ (((int)new) << 8);

  for(i=0; i<8; i++) {
    crc <<= 1;
    if(crc & 0x10000) crc ^= POLYNOM;
  }
  return crc & 0xFFFF;
}
