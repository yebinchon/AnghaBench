
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ hex_convert (int const) ;

u32 hex_to_u32 (const u8 hex[8])
{
  u32 v = 0;

  v |= ((u32) hex_convert (hex[1]) << 0);
  v |= ((u32) hex_convert (hex[0]) << 4);
  v |= ((u32) hex_convert (hex[3]) << 8);
  v |= ((u32) hex_convert (hex[2]) << 12);
  v |= ((u32) hex_convert (hex[5]) << 16);
  v |= ((u32) hex_convert (hex[4]) << 20);
  v |= ((u32) hex_convert (hex[7]) << 24);
  v |= ((u32) hex_convert (hex[6]) << 28);

  return (v);
}
