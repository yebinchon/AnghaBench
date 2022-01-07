
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



bool is_power_of_2 (const u32 v)
{
  return (v && !(v & (v - 1)));
}
