
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int UV_BIOS_FREQ_BASE ;
 int uv_bios_call (int ,int ,int ,int ,int ,int ) ;

s64 uv_bios_freq_base(u64 clock_type, u64 *ticks_per_second)
{
 return uv_bios_call(UV_BIOS_FREQ_BASE, clock_type,
      (u64)ticks_per_second, 0, 0, 0);
}
