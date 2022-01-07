
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int mips_hpt_frequency ;

__attribute__((used)) static int htp_freq_to_cpu_freq(unsigned int clk_mult)
{
 return mips_hpt_frequency * clk_mult / 1000;
}
