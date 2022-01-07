
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct clk*) ;
 struct clk* clk_get (struct device*,char const*) ;
 int devm_clk_release ;
 int devres_add (struct device*,struct clk**) ;
 struct clk** devres_alloc (int ,int,int ) ;
 int devres_free (struct clk**) ;

struct clk *devm_clk_get(struct device *dev, const char *id)
{
 struct clk **ptr, *clk;

 ptr = devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 clk = clk_get(dev, id);
 if (!IS_ERR(clk)) {
  *ptr = clk;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return clk;
}
