
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_clk_provider {int reg_base; } ;
struct exynos5_subcmu_info {int nr_suspend_regs; int suspend_regs; int nr_gate_clks; int gate_clks; } ;


 struct exynos5_subcmu_info const** cmu ;
 struct samsung_clk_provider* ctx ;
 int exynos5_subcmu_clk_save (int ,int ,int ) ;
 int exynos5_subcmu_defer_gate (struct samsung_clk_provider*,int ,int ) ;
 int nr_cmus ;

void exynos5_subcmus_init(struct samsung_clk_provider *_ctx, int _nr_cmus,
     const struct exynos5_subcmu_info **_cmu)
{
 ctx = _ctx;
 cmu = _cmu;
 nr_cmus = _nr_cmus;

 for (; _nr_cmus--; _cmu++) {
  exynos5_subcmu_defer_gate(ctx, (*_cmu)->gate_clks,
       (*_cmu)->nr_gate_clks);
  exynos5_subcmu_clk_save(ctx->reg_base, (*_cmu)->suspend_regs,
     (*_cmu)->nr_suspend_regs);
 }
}
