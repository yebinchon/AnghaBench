
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int DFLL_FREQ_REQ_SCALE_MAX ;

__attribute__((used)) static unsigned long dfll_scale_dvco_rate(int scale_bits,
       unsigned long dvco_rate)
{
 return (u64)dvco_rate * (scale_bits + 1) / DFLL_FREQ_REQ_SCALE_MAX;
}
