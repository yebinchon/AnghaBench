
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* crctable ;

void CRC_ContinueProcessString(unsigned short *crc, char *data, int length)
{
 int i;

 for (i = 0; i < length; i++)
 {
  *crc = (*crc << 8) ^ crctable[(*crc >> 8) ^ data[i]];
 }
}
