
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



u8 hex_convert (const u8 c)
{
  return (c & 15) + (c >> 6) * 9;
}
