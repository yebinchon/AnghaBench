
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int clkr; } ;
struct TYPE_9__ {int clkr; } ;
struct TYPE_8__ {int clkr; } ;
struct TYPE_7__ {int parent_map; int freq_tbl; } ;
struct TYPE_6__ {int num_parents; int parent_names; } ;


 size_t GCC_SDCC1_CDCCAL_FF_CLK ;
 size_t GCC_SDCC1_CDCCAL_SLEEP_CLK ;
 size_t GPLL4 ;
 size_t GPLL4_VOTE ;
 int ftbl_gcc_sdcc1_apps_clk_pro ;
 int ** gcc_msm8974_clocks ;
 TYPE_5__ gcc_sdcc1_cdccal_ff_clk ;
 TYPE_4__ gcc_sdcc1_cdccal_sleep_clk ;
 int gcc_xo_gpll0_gpll4 ;
 int gcc_xo_gpll0_gpll4_map ;
 TYPE_3__ gpll4 ;
 int gpll4_vote ;
 TYPE_2__ sdcc1_apps_clk_src ;
 TYPE_1__ sdcc1_apps_clk_src_init ;

__attribute__((used)) static void msm8974_pro_clock_override(void)
{
 sdcc1_apps_clk_src_init.parent_names = gcc_xo_gpll0_gpll4;
 sdcc1_apps_clk_src_init.num_parents = 3;
 sdcc1_apps_clk_src.freq_tbl = ftbl_gcc_sdcc1_apps_clk_pro;
 sdcc1_apps_clk_src.parent_map = gcc_xo_gpll0_gpll4_map;

 gcc_msm8974_clocks[GPLL4] = &gpll4.clkr;
 gcc_msm8974_clocks[GPLL4_VOTE] = &gpll4_vote;
 gcc_msm8974_clocks[GCC_SDCC1_CDCCAL_SLEEP_CLK] =
  &gcc_sdcc1_cdccal_sleep_clk.clkr;
 gcc_msm8974_clocks[GCC_SDCC1_CDCCAL_FF_CLK] =
  &gcc_sdcc1_cdccal_ff_clk.clkr;
}
