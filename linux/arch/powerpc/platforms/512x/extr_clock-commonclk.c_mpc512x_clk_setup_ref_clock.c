
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int scfr1; } ;


 int IS_ERR (struct clk*) ;
 size_t MPC512x_CLK_REF ;
 int clk_get_rate (int ) ;
 TYPE_1__* clkregs ;
 int * clks ;
 int get_bit_field (int *,int,int) ;
 int get_spmf_mult () ;
 int get_sys_div_x2 () ;
 int mpc512x_clk_factor (char*,char*,int,int) ;
 int mpc512x_clk_fixed (char*,int) ;
 struct clk* of_clk_get_by_name (struct device_node*,char*) ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static void mpc512x_clk_setup_ref_clock(struct device_node *np, int bus_freq,
     int *sys_mul, int *sys_div,
     int *ips_div)
{
 struct clk *osc_clk;
 int calc_freq;


 *sys_mul = get_spmf_mult();
 *sys_mul *= 2;
 *sys_div = get_sys_div_x2();
 *ips_div = get_bit_field(&clkregs->scfr1, 23, 3);


 osc_clk = of_clk_get_by_name(np, "osc");
 if (!IS_ERR(osc_clk)) {
  clks[MPC512x_CLK_REF] = mpc512x_clk_factor("ref", "osc", 1, 1);
  calc_freq = clk_get_rate(clks[MPC512x_CLK_REF]);
  calc_freq *= *sys_mul;
  calc_freq /= *sys_div;
  calc_freq /= 2;
  calc_freq /= *ips_div;
  if (bus_freq && calc_freq != bus_freq)
   pr_warn("calc rate %d != OF spec %d\n",
    calc_freq, bus_freq);
 } else {
  calc_freq = bus_freq;
  calc_freq *= *ips_div;
  calc_freq *= 2;
  calc_freq *= *sys_div;
  calc_freq /= *sys_mul;
  clks[MPC512x_CLK_REF] = mpc512x_clk_fixed("ref", calc_freq);
 }
}
