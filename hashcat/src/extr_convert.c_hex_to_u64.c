
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 scalar_t__ hex_convert (int const) ;

u64 hex_to_u64 (const u8 hex[16])
{
  u64 v = 0;

  v |= ((u64) hex_convert (hex[ 1]) << 0);
  v |= ((u64) hex_convert (hex[ 0]) << 4);
  v |= ((u64) hex_convert (hex[ 3]) << 8);
  v |= ((u64) hex_convert (hex[ 2]) << 12);
  v |= ((u64) hex_convert (hex[ 5]) << 16);
  v |= ((u64) hex_convert (hex[ 4]) << 20);
  v |= ((u64) hex_convert (hex[ 7]) << 24);
  v |= ((u64) hex_convert (hex[ 6]) << 28);
  v |= ((u64) hex_convert (hex[ 9]) << 32);
  v |= ((u64) hex_convert (hex[ 8]) << 36);
  v |= ((u64) hex_convert (hex[11]) << 40);
  v |= ((u64) hex_convert (hex[10]) << 44);
  v |= ((u64) hex_convert (hex[13]) << 48);
  v |= ((u64) hex_convert (hex[12]) << 52);
  v |= ((u64) hex_convert (hex[15]) << 56);
  v |= ((u64) hex_convert (hex[14]) << 60);

  return (v);
}
