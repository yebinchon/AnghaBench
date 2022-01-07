
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMX_CHIP_REVISION_UNKNOWN ;
 int pr_info (char*,char const*,...) ;

void imx_print_silicon_rev(const char *cpu, int srev)
{
 if (srev == IMX_CHIP_REVISION_UNKNOWN)
  pr_info("CPU identified as %s, unknown revision\n", cpu);
 else
  pr_info("CPU identified as %s, silicon rev %d.%d\n",
    cpu, (srev >> 4) & 0xf, srev & 0xf);
}
