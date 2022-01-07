
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



u16 byte_swap_16 (const u16 n)
{
  return (u16) ((n >> 8) | (n << 8));
}
