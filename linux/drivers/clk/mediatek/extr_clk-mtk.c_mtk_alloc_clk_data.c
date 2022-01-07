
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_onecell_data {unsigned int clk_num; int * clks; } ;


 int ENOENT ;
 int ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (struct clk_onecell_data*) ;
 struct clk_onecell_data* kzalloc (int,int ) ;

struct clk_onecell_data *mtk_alloc_clk_data(unsigned int clk_num)
{
 int i;
 struct clk_onecell_data *clk_data;

 clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
 if (!clk_data)
  return ((void*)0);

 clk_data->clks = kcalloc(clk_num, sizeof(*clk_data->clks), GFP_KERNEL);
 if (!clk_data->clks)
  goto err_out;

 clk_data->clk_num = clk_num;

 for (i = 0; i < clk_num; i++)
  clk_data->clks[i] = ERR_PTR(-ENOENT);

 return clk_data;
err_out:
 kfree(clk_data);

 return ((void*)0);
}
