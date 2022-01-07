
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct clk*) ;
 int devm_clk_release ;
 int devres_add (struct device*,struct clk**) ;
 struct clk** devres_alloc (int ,int,int ) ;
 int devres_free (struct clk**) ;
 struct clk* of_clk_get_by_name (struct device_node*,char const*) ;

struct clk *devm_get_clk_from_child(struct device *dev,
        struct device_node *np, const char *con_id)
{
 struct clk **ptr, *clk;

 ptr = devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 clk = of_clk_get_by_name(np, con_id);
 if (!IS_ERR(clk)) {
  *ptr = clk;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return clk;
}
