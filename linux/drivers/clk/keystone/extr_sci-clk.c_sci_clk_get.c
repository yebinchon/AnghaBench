
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_clk_provider {int num_clocks; int clocks; } ;
struct clk_hw {int dummy; } ;
struct sci_clk {struct clk_hw hw; int clk_id; int dev_id; } ;
struct of_phandle_args {int args_count; int * args; } ;
typedef int clk ;


 int EINVAL ;
 int ENODEV ;
 struct clk_hw* ERR_PTR (int ) ;
 int _cmp_sci_clk ;
 struct sci_clk** bsearch (struct sci_clk*,int ,int ,int,int ) ;

__attribute__((used)) static struct clk_hw *sci_clk_get(struct of_phandle_args *clkspec, void *data)
{
 struct sci_clk_provider *provider = data;
 struct sci_clk **clk;
 struct sci_clk key;

 if (clkspec->args_count != 2)
  return ERR_PTR(-EINVAL);

 key.dev_id = clkspec->args[0];
 key.clk_id = clkspec->args[1];

 clk = bsearch(&key, provider->clocks, provider->num_clocks,
        sizeof(clk), _cmp_sci_clk);

 if (!clk)
  return ERR_PTR(-ENODEV);

 return &(*clk)->hw;
}
