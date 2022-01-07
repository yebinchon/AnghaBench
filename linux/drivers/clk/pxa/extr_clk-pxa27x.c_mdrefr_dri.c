
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int SDRAM_TREF ;
 unsigned int get_sdram_rows () ;

__attribute__((used)) static u32 mdrefr_dri(unsigned int freq_khz)
{
 u32 interval = freq_khz * SDRAM_TREF / get_sdram_rows();

 return (interval - 31) / 32;
}
