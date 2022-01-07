
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex_convert (int const) ;

u8 hex_to_u8 (const u8 hex[2])
{
  u8 v = 0;

  v |= (hex_convert (hex[1]) << 0);
  v |= (hex_convert (hex[0]) << 4);

  return (v);
}
