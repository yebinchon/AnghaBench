
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int* t10_dif_crc_table ;

__u16 crc_t10dif_generic(__u16 crc, const unsigned char *buffer, size_t len)
{
 unsigned int i;

 for (i = 0 ; i < len ; i++)
  crc = (crc << 8) ^ t10_dif_crc_table[((crc >> 8) ^ buffer[i]) & 0xff];

 return crc;
}
