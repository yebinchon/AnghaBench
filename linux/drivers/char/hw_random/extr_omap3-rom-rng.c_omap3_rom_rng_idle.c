
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int RNG_RESET ;
 int clk_disable_unprepare (int ) ;
 int omap3_rom_rng_call (int ,int ,int ) ;
 int pr_err (char*,int) ;
 int rng_clk ;
 int rng_idle ;

__attribute__((used)) static void omap3_rom_rng_idle(struct work_struct *work)
{
 int r;

 r = omap3_rom_rng_call(0, 0, RNG_RESET);
 if (r != 0) {
  pr_err("reset failed: %d\n", r);
  return;
 }
 clk_disable_unprepare(rng_clk);
 rng_idle = 1;
}
