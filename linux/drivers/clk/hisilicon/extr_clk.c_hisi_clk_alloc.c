
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int clk_num; struct clk** clks; } ;
struct hisi_clock_data {TYPE_1__ clk_data; int base; } ;
struct clk {int dummy; } ;


 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int devm_ioremap (int *,int ,int ) ;
 struct hisi_clock_data* devm_kmalloc (int *,int,int ) ;
 struct clk** devm_kmalloc_array (int *,int,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;

struct hisi_clock_data *hisi_clk_alloc(struct platform_device *pdev,
      int nr_clks)
{
 struct hisi_clock_data *clk_data;
 struct resource *res;
 struct clk **clk_table;

 clk_data = devm_kmalloc(&pdev->dev, sizeof(*clk_data), GFP_KERNEL);
 if (!clk_data)
  return ((void*)0);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return ((void*)0);
 clk_data->base = devm_ioremap(&pdev->dev,
    res->start, resource_size(res));
 if (!clk_data->base)
  return ((void*)0);

 clk_table = devm_kmalloc_array(&pdev->dev, nr_clks,
           sizeof(*clk_table),
           GFP_KERNEL);
 if (!clk_table)
  return ((void*)0);

 clk_data->clk_data.clks = clk_table;
 clk_data->clk_data.clk_num = nr_clks;

 return clk_data;
}
