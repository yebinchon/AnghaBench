
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_clk {scalar_t__ name; int freq; int parent_name; } ;
struct platform_device {int dev; } ;
struct clk_plt_data {int nparents; int * parents; } ;


 int ENOMEM ;
 char const** ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int * devm_kcalloc (int *,int,int,int ) ;
 char** kcalloc (int,int,int ) ;
 char* kstrdup_const (scalar_t__,int ) ;
 int plt_clk_free_parent_names_loop (char const**,unsigned int) ;
 int plt_clk_register_fixed_rate (struct platform_device*,scalar_t__,int ,int ) ;
 int plt_clk_unregister_fixed_rate_loop (struct clk_plt_data*,unsigned int) ;

__attribute__((used)) static const char **plt_clk_register_parents(struct platform_device *pdev,
          struct clk_plt_data *data,
          const struct pmc_clk *clks)
{
 const char **parent_names;
 unsigned int i;
 int err;
 int nparents = 0;

 data->nparents = 0;
 while (clks[nparents].name)
  nparents++;

 data->parents = devm_kcalloc(&pdev->dev, nparents,
         sizeof(*data->parents), GFP_KERNEL);
 if (!data->parents)
  return ERR_PTR(-ENOMEM);

 parent_names = kcalloc(nparents, sizeof(*parent_names),
          GFP_KERNEL);
 if (!parent_names)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < nparents; i++) {
  data->parents[i] =
   plt_clk_register_fixed_rate(pdev, clks[i].name,
          clks[i].parent_name,
          clks[i].freq);
  if (IS_ERR(data->parents[i])) {
   err = PTR_ERR(data->parents[i]);
   goto err_unreg;
  }
  parent_names[i] = kstrdup_const(clks[i].name, GFP_KERNEL);
 }

 data->nparents = nparents;
 return parent_names;

err_unreg:
 plt_clk_unregister_fixed_rate_loop(data, i);
 plt_clk_free_parent_names_loop(parent_names, i);
 return ERR_PTR(err);
}
