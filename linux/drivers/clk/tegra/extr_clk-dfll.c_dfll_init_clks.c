
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {void* i2c_clk; int i2c_clk_rate; int dev; void* soc_clk; void* ref_clk; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_get_rate (void*) ;
 int dev_err (int ,char*) ;
 void* devm_clk_get (int ,char*) ;

__attribute__((used)) static int dfll_init_clks(struct tegra_dfll *td)
{
 td->ref_clk = devm_clk_get(td->dev, "ref");
 if (IS_ERR(td->ref_clk)) {
  dev_err(td->dev, "missing ref clock\n");
  return PTR_ERR(td->ref_clk);
 }

 td->soc_clk = devm_clk_get(td->dev, "soc");
 if (IS_ERR(td->soc_clk)) {
  dev_err(td->dev, "missing soc clock\n");
  return PTR_ERR(td->soc_clk);
 }

 td->i2c_clk = devm_clk_get(td->dev, "i2c");
 if (IS_ERR(td->i2c_clk)) {
  dev_err(td->dev, "missing i2c clock\n");
  return PTR_ERR(td->i2c_clk);
 }
 td->i2c_clk_rate = clk_get_rate(td->i2c_clk);

 return 0;
}
