
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int EIO ;
 int RNG_GEN_HW ;
 int RNG_GEN_PRNG_HW_INIT ;
 int cancel_delayed_work_sync (int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int idle_work ;
 int msecs_to_jiffies (int) ;
 int omap3_rom_rng_call (int,unsigned int,int ) ;
 int pr_err (char*,int) ;
 int rng_clk ;
 scalar_t__ rng_idle ;
 int schedule_delayed_work (int *,int ) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static int omap3_rom_rng_get_random(void *buf, unsigned int count)
{
 u32 r;
 u32 ptr;

 cancel_delayed_work_sync(&idle_work);
 if (rng_idle) {
  r = clk_prepare_enable(rng_clk);
  if (r)
   return r;

  r = omap3_rom_rng_call(0, 0, RNG_GEN_PRNG_HW_INIT);
  if (r != 0) {
   clk_disable_unprepare(rng_clk);
   pr_err("HW init failed: %d\n", r);
   return -EIO;
  }
  rng_idle = 0;
 }

 ptr = virt_to_phys(buf);
 r = omap3_rom_rng_call(ptr, count, RNG_GEN_HW);
 schedule_delayed_work(&idle_work, msecs_to_jiffies(500));
 if (r != 0)
  return -EINVAL;
 return 0;
}
