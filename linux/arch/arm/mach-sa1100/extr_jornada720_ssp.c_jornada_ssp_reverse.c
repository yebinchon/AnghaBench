
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



inline u8 jornada_ssp_reverse(u8 byte)
{
 return
  ((0x80 & byte) >> 7) |
  ((0x40 & byte) >> 5) |
  ((0x20 & byte) >> 3) |
  ((0x10 & byte) >> 1) |
  ((0x08 & byte) << 1) |
  ((0x04 & byte) << 3) |
  ((0x02 & byte) << 5) |
  ((0x01 & byte) << 7);
}
